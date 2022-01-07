; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_write_object_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_write_object_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GIT_OBJECT_DIR_MODE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@S_IREAD = common dso_local global i32 0, align 4
@S_IWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @write_object_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_object_files(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GIT_OBJECT_DIR_MODE, align 4
  %8 = call i64 @p_mkdir(i32 %6, i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @EEXIST, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @S_IREAD, align 4
  %21 = load i32, i32* @S_IWRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @p_creat(i32 %19, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @p_write(i32 %27, i32 %30, i32 %33)
  %35 = call i32 @cl_must_pass(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @p_close(i32 %36)
  ret void
}

declare dso_local i64 @p_mkdir(i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @p_creat(i32, i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_write(i32, i32, i32) #1

declare dso_local i32 @p_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
