; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_mobility.c_pseries_devicetree_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_mobility.c_pseries_devicetree_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"ibm,update-nodes\00", align 1
@RTAS_UNKNOWN_SERVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTAS_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NODE_ACTION_MASK = common dso_local global i32 0, align 4
@NODE_COUNT_MASK = common dso_local global i32 0, align 4
@PRRN_SCOPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pseries_devicetree_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = call i32 @rtas_token(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RTAS_UNKNOWN_SERVICE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %110

20:                                               ; preds = %1
  %21 = load i32, i32* @RTAS_DATA_BUF_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %110

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %103, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @mobility_rtas_call(i32 %31, i8* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %106

41:                                               ; preds = %37, %30
  %42 = load i8*, i8** %4, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %100, %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = load i32, i32* @NODE_ACTION_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = load i32, i32* @NODE_ACTION_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = load i32, i32* @NODE_COUNT_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %97, %52
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %5, align 8
  %72 = load i32, i32* %70, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  switch i32 %73, label %95 [
    i32 129, label %74
    i32 128, label %77
    i32 130, label %88
  ]

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @delete_dt_node(i32 %75)
  br label %95

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @update_dt_node(i32 %78, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @PRRN_SCOPE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @prrn_update_node(i32 %85)
  br label %87

87:                                               ; preds = %84, %77
  br label %95

88:                                               ; preds = %69
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %5, align 8
  %91 = load i32, i32* %89, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @add_dt_node(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %69, %88, %87, %74
  %96 = call i32 (...) @cond_resched()
  br label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %65

100:                                              ; preds = %65
  br label %45

101:                                              ; preds = %45
  %102 = call i32 (...) @cond_resched()
  br label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %30, label %106

106:                                              ; preds = %103, %40
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %26, %17
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mobility_rtas_call(i32, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @delete_dt_node(i32) #1

declare dso_local i32 @update_dt_node(i32, i32) #1

declare dso_local i32 @prrn_update_node(i32) #1

declare dso_local i32 @add_dt_node(i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
