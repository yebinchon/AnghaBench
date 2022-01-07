; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_of_helpers.c_pseries_of_derive_parent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_of_helpers.c_pseries_of_derive_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @pseries_of_derive_parent(i8* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @kbasename(i8* %7)
  %9 = getelementptr inbounds i8, i8* %8, i64 -1
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.device_node* @ERR_PTR(i32 %15)
  store %struct.device_node* %16, %struct.device_node** %2, align 8
  br label %58

17:                                               ; preds = %1
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ugt i8* %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kstrndup(i8* %22, i32 %28, i32 %29)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.device_node* @ERR_PTR(i32 %35)
  store %struct.device_node* %36, %struct.device_node** %2, align 8
  br label %58

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i8*, i8** %5, align 8
  %40 = call %struct.device_node* @of_find_node_by_path(i8* %39)
  store %struct.device_node* %40, %struct.device_node** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @kfree(i8* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = icmp ne %struct.device_node* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  br label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.device_node* @ERR_PTR(i32 %54)
  br label %56

56:                                               ; preds = %52, %50
  %57 = phi %struct.device_node* [ %51, %50 ], [ %55, %52 ]
  store %struct.device_node* %57, %struct.device_node** %2, align 8
  br label %58

58:                                               ; preds = %56, %33, %13
  %59 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %59
}

declare dso_local i8* @kbasename(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.device_node* @ERR_PTR(i32) #1

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
