; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_error_function.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_error_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsck_options = type { i32 }
%struct.object = type { i32 }

@FSCK_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"object %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsck_error_function(%struct.fsck_options* %0, %struct.object* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsck_options*, align 8
  %7 = alloca %struct.object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.fsck_options* %0, %struct.fsck_options** %6, align 8
  store %struct.object* %1, %struct.object** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @FSCK_WARN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.fsck_options*, %struct.fsck_options** %6, align 8
  %15 = load %struct.object*, %struct.object** %7, align 8
  %16 = call i32 @describe_object(%struct.fsck_options* %14, %struct.object* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17)
  store i32 0, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.fsck_options*, %struct.fsck_options** %6, align 8
  %21 = load %struct.object*, %struct.object** %7, align 8
  %22 = call i32 @describe_object(%struct.fsck_options* %20, %struct.object* %21)
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23)
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @warning(i8*, i32, i8*) #1

declare dso_local i32 @describe_object(%struct.fsck_options*, %struct.object*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
