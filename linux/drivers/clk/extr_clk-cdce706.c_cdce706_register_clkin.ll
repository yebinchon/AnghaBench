; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_register_clkin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_register_clkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cdce706_dev_data = type { %struct.TYPE_8__*, %struct.clk**, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.clk = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.clk_init_data = type { i32, %struct.TYPE_8__*, i32* }

@cdce706_clkin_ops = common dso_local global i32 0, align 4
@cdce706_source_name = common dso_local global %struct.TYPE_8__* null, align 8
@CDCE706_CLKIN_SOURCE = common dso_local global i32 0, align 4
@CDCE706_CLKIN_SOURCE_MASK = common dso_local global i32 0, align 4
@CDCE706_CLKIN_SOURCE_LVCMOS = common dso_local global i32 0, align 4
@CDCE706_CLKIN_CLOCK = common dso_local global i32 0, align 4
@CDCE706_CLKIN_CLOCK_MASK = common dso_local global i32 0, align 4
@cdce706_clkin_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdce706_dev_data*)* @cdce706_register_clkin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdce706_register_clkin(%struct.cdce706_dev_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdce706_dev_data*, align 8
  %4 = alloca %struct.clk_init_data, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk*, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  store %struct.cdce706_dev_data* %0, %struct.cdce706_dev_data** %3, align 8
  %11 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  %12 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %13 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %14)
  store i32 %15, i32* %11, align 8
  %16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  %17 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %18 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %16, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i32* @cdce706_clkin_ops, i32** %20, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %76, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %24 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %25)
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %21
  %29 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %30 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdce706_source_name, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.clk* @devm_clk_get(i32* %32, i32 %38)
  store %struct.clk* %39, %struct.clk** %9, align 8
  %40 = load %struct.clk*, %struct.clk** %9, align 8
  %41 = call i64 @IS_ERR(%struct.clk* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %28
  %44 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %45 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdce706_source_name, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = bitcast %struct.TYPE_8__* %49 to i8*
  %55 = bitcast %struct.TYPE_8__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %75

56:                                               ; preds = %28
  %57 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %58 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = load %struct.clk*, %struct.clk** %9, align 8
  %64 = call i32 @__clk_get_name(%struct.clk* %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = bitcast %struct.TYPE_8__* %62 to i8*
  %67 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = load %struct.clk*, %struct.clk** %9, align 8
  %69 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %70 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %69, i32 0, i32 1
  %71 = load %struct.clk**, %struct.clk*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.clk*, %struct.clk** %71, i64 %73
  store %struct.clk* %68, %struct.clk** %74, align 8
  br label %75

75:                                               ; preds = %56, %43
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %21

79:                                               ; preds = %21
  %80 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %81 = load i32, i32* @CDCE706_CLKIN_SOURCE, align 4
  %82 = call i32 @cdce706_reg_read(%struct.cdce706_dev_data* %80, i32 %81, i32* %8)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %126

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @CDCE706_CLKIN_SOURCE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @CDCE706_CLKIN_SOURCE_LVCMOS, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  %94 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %95 = load i32, i32* @CDCE706_CLKIN_CLOCK, align 4
  %96 = call i32 @cdce706_reg_read(%struct.cdce706_dev_data* %94, i32 %95, i32* %7)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %126

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CDCE706_CLKIN_CLOCK_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %110 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %101, %87
  %115 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %116 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %117 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %3, align 8
  %120 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %121)
  %123 = load i32, i32* @cdce706_clkin_name, align 4
  %124 = call i32 @cdce706_register_hw(%struct.cdce706_dev_data* %115, %struct.TYPE_8__* %118, i32 %122, i32 %123, %struct.clk_init_data* %4)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %114, %99, %85
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__clk_get_name(%struct.clk*) #1

declare dso_local i32 @cdce706_reg_read(%struct.cdce706_dev_data*, i32, i32*) #1

declare dso_local i32 @cdce706_register_hw(%struct.cdce706_dev_data*, %struct.TYPE_8__*, i32, i32, %struct.clk_init_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
