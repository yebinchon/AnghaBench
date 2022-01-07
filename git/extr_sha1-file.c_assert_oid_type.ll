; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_assert_oid_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_assert_oid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s is not a valid object\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s is not a valid '%s' object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_oid_type(%struct.object_id* %0, i32 %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @the_repository, align 4
  %7 = load %struct.object_id*, %struct.object_id** %3, align 8
  %8 = call i32 @oid_object_info(i32 %6, %struct.object_id* %7, i32* null)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.object_id*, %struct.object_id** %3, align 8
  %14 = call i32 @oid_to_hex(%struct.object_id* %13)
  %15 = call i32 (i32, i32, ...) @die(i32 %12, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.object_id*, %struct.object_id** %3, align 8
  %23 = call i32 @oid_to_hex(%struct.object_id* %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @type_name(i32 %24)
  %26 = call i32 (i32, i32, ...) @die(i32 %21, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i32 @die(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
