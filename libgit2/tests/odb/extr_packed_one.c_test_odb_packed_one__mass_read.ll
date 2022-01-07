; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_packed_one.c_test_odb_packed_one__mass_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_packed_one.c_test_odb_packed_one__mass_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@packed_objects_one = common dso_local global i32* null, align 8
@_odb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_packed_one__mass_read() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %27, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32*, i32** @packed_objects_one, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = load i32*, i32** @packed_objects_one, align 8
  %11 = load i32, i32* %1, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @git_oid_fromstr(i32* %2, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @_odb, align 4
  %18 = call i32 @git_odb_exists(i32 %17, i32* %2)
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32, i32* @_odb, align 4
  %23 = call i32 @git_odb_read(i32** %3, i32 %22, i32* %2)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_odb_object_free(i32* %25)
  br label %27

27:                                               ; preds = %9
  %28 = load i32, i32* %1, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_odb_exists(i32, i32*) #1

declare dso_local i32 @git_odb_read(i32**, i32, i32*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
