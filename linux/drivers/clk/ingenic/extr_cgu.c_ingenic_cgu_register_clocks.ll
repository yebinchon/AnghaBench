; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_cgu_register_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_cgu_register_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_cgu = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@CGU_CLK_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ingenic_cgu_register_clocks(%struct.ingenic_cgu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ingenic_cgu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ingenic_cgu* %0, %struct.ingenic_cgu** %3, align 8
  %6 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %7 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kcalloc(i32 %9, i32 8, i32 %10)
  %12 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %13 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32* %11, i32** %14, align 8
  %15 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %16 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %115

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %27 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ingenic_register_clock(%struct.ingenic_cgu* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %54

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %44 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @of_clk_src_onecell_get, align 4
  %47 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %48 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %47, i32 0, i32 0
  %49 = call i32 @of_clk_add_provider(i32 %45, i32 %46, %struct.TYPE_4__* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %117

54:                                               ; preds = %52, %37
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %106, %54
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %58 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %56, %60
  br i1 %61, label %62, label %109

62:                                               ; preds = %55
  %63 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %64 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %106

73:                                               ; preds = %62
  %74 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %75 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CGU_CLK_EXT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %73
  %86 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %87 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @clk_put(i32 %93)
  br label %105

95:                                               ; preds = %73
  %96 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %97 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @clk_unregister(i32 %103)
  br label %105

105:                                              ; preds = %95, %85
  br label %106

106:                                              ; preds = %105, %72
  %107 = load i32, i32* %4, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %55

109:                                              ; preds = %55
  %110 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %111 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @kfree(i32* %113)
  br label %115

115:                                              ; preds = %109, %20
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %53
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ingenic_register_clock(%struct.ingenic_cgu*, i32) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @clk_unregister(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
