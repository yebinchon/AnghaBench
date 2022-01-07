; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_multipart.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_multipart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swconfig_callback = type { i64 (%struct.swconfig_callback*, i8*)*, i64 (%struct.swconfig_callback*, i8*)*, i32*, %struct.genl_info* }
%struct.genl_info = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swconfig_callback*, i8*)* @swconfig_send_multipart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_send_multipart(%struct.swconfig_callback* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swconfig_callback*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.swconfig_callback* %0, %struct.swconfig_callback** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %10 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 3
  %11 = load %struct.genl_info*, %struct.genl_info** %10, align 8
  store %struct.genl_info* %11, %struct.genl_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %69, %2
  %13 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %14 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @nlmsg_new(i32 %18, i32 %19)
  %21 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %22 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %24 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %73

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %31 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %30, i32 0, i32 0
  %32 = load i64 (%struct.swconfig_callback*, i8*)*, i64 (%struct.swconfig_callback*, i8*)** %31, align 8
  %33 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 %32(%struct.swconfig_callback* %33, i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %72

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %73

42:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  %43 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %44 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %43, i32 0, i32 1
  %45 = load i64 (%struct.swconfig_callback*, i8*)*, i64 (%struct.swconfig_callback*, i8*)** %44, align 8
  %46 = icmp ne i64 (%struct.swconfig_callback*, i8*)* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %49 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %48, i32 0, i32 1
  %50 = load i64 (%struct.swconfig_callback*, i8*)*, i64 (%struct.swconfig_callback*, i8*)** %49, align 8
  %51 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 %50(%struct.swconfig_callback* %51, i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %73

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %59 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %62 = call i32 @genlmsg_reply(i32* %60, %struct.genl_info* %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %64 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %73

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %12, label %72

72:                                               ; preds = %69, %37
  store i32 0, i32* %3, align 4
  br label %84

73:                                               ; preds = %67, %55, %41, %27
  %74 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %75 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %80 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @nlmsg_free(i32* %81)
  br label %83

83:                                               ; preds = %78, %73
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32* @nlmsg_new(i32, i32) #1

declare dso_local i32 @genlmsg_reply(i32*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
