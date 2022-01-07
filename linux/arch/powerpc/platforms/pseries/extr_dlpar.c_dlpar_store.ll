; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i32 }
%struct.class_attribute = type { i32 }
%struct.pseries_hp_errorlog = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Could not allocate resources for DLPAR operation\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not handle DLPAR request \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.class*, %struct.class_attribute*, i8*, i64)* @dlpar_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlpar_store(%struct.class* %0, %struct.class_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.class*, align 8
  %7 = alloca %struct.class_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pseries_hp_errorlog, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.class* %0, %struct.class** %6, align 8
  store %struct.class_attribute* %1, %struct.class_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kstrdup(i8* %14, i32 %15)
  store i8* %16, i8** %11, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @kfree(i8* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %4
  %26 = call i32 @dlpar_parse_resource(i8** %12, %struct.pseries_hp_errorlog* %10)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %42

30:                                               ; preds = %25
  %31 = call i32 @dlpar_parse_action(i8** %12, %struct.pseries_hp_errorlog* %10)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %42

35:                                               ; preds = %30
  %36 = call i32 @dlpar_parse_id_type(i8** %12, %struct.pseries_hp_errorlog* %10)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  %41 = call i32 @handle_dlpar_errorlog(%struct.pseries_hp_errorlog* %10)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %40, %39, %34, %29
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @kfree(i8* %43)
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  br label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i64 [ %55, %53 ], [ %57, %56 ]
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %19
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dlpar_parse_resource(i8**, %struct.pseries_hp_errorlog*) #1

declare dso_local i32 @dlpar_parse_action(i8**, %struct.pseries_hp_errorlog*) #1

declare dso_local i32 @dlpar_parse_id_type(i8**, %struct.pseries_hp_errorlog*) #1

declare dso_local i32 @handle_dlpar_errorlog(%struct.pseries_hp_errorlog*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
