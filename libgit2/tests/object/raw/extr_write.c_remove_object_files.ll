; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_write.c_remove_object_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_write.c_remove_object_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i64 0, align 8
@odb_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @remove_object_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_object_files(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @p_unlink(i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @p_rmdir(i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ENOTEMPTY, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = load i32, i32* @odb_dir, align 4
  %19 = call i32 @p_rmdir(i32 %18)
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_git_pass(i32 %21)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_unlink(i32) #1

declare dso_local i32 @p_rmdir(i32) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
