; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_default.c_clear_marks.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_default.c_clear_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i64 }
%struct.commit = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@COMMON = common dso_local global i32 0, align 4
@COMMON_REF = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@POPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @clear_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_marks(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @the_repository, align 4
  %11 = load i32, i32* @the_repository, align 4
  %12 = load %struct.object_id*, %struct.object_id** %6, align 8
  %13 = call i32 @parse_object(i32 %11, %struct.object_id* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.object* @deref_tag(i32 %10, i32 %13, i8* %14, i32 0)
  store %struct.object* %15, %struct.object** %9, align 8
  %16 = load %struct.object*, %struct.object** %9, align 8
  %17 = icmp ne %struct.object* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = load %struct.object*, %struct.object** %9, align 8
  %20 = getelementptr inbounds %struct.object, %struct.object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OBJ_COMMIT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.object*, %struct.object** %9, align 8
  %26 = bitcast %struct.object* %25 to %struct.commit*
  %27 = load i32, i32* @COMMON, align 4
  %28 = load i32, i32* @COMMON_REF, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SEEN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @POPPED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @clear_commit_marks(%struct.commit* %26, i32 %33)
  br label %35

35:                                               ; preds = %24, %18, %4
  ret i32 0
}

declare dso_local %struct.object* @deref_tag(i32, i32, i8*, i32) #1

declare dso_local i32 @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
