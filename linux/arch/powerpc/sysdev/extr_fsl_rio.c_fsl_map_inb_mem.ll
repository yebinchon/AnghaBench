; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_map_inb_mem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_map_inb_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RIO_INB_ATMU_COUNT = common dso_local global i32 0, align 4
@RIWAR_ENABLE = common dso_local global i32 0, align 4
@RIWBAR_BADD_MASK = common dso_local global i32 0, align 4
@RIWBAR_BADD_VAL_SHIFT = common dso_local global i32 0, align 4
@RIWAR_SIZE_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RIWTAR_TRAD_VAL_SHIFT = common dso_local global i32 0, align 4
@RIWAR_TGINT_LOCAL = common dso_local global i32 0, align 4
@RIWAR_RDTYP_SNOOP = common dso_local global i32 0, align 4
@RIWAR_WRTYP_SNOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_map_inb_mem(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rio_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %20 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %19, i32 0, i32 0
  %21 = load %struct.rio_priv*, %struct.rio_priv** %20, align 8
  store %struct.rio_priv* %21, %struct.rio_priv** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ugt i64 %29, 17179869184
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %183

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ilog2(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %183

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %183

56:                                               ; preds = %47
  store i32 0, i32* %18, align 4
  br label %57

57:                                               ; preds = %109, %56
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* @RIO_INB_ATMU_COUNT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %112

61:                                               ; preds = %57
  %62 = load %struct.rio_priv*, %struct.rio_priv** %12, align 8
  %63 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @in_be32(i32* %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @RIWAR_ENABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %109

75:                                               ; preds = %61
  %76 = load %struct.rio_priv*, %struct.rio_priv** %12, align 8
  %77 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = call i32 @in_be32(i32* %82)
  %84 = load i32, i32* @RIWBAR_BADD_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @RIWBAR_BADD_VAL_SHIFT, align 4
  %87 = shl i32 %85, %86
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @RIWAR_SIZE_MASK, align 4
  %91 = and i32 %89, %90
  %92 = add nsw i32 %91, 1
  %93 = shl i32 1, %92
  %94 = sub nsw i32 %93, 1
  %95 = add nsw i32 %88, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %75
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %15, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %183

108:                                              ; preds = %99, %75
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %57

112:                                              ; preds = %57
  store i32 0, i32* %18, align 4
  br label %113

113:                                              ; preds = %132, %112
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @RIO_INB_ATMU_COUNT, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load %struct.rio_priv*, %struct.rio_priv** %12, align 8
  %119 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = call i32 @in_be32(i32* %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @RIWAR_ENABLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %117
  br label %135

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %113

135:                                              ; preds = %130, %113
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @RIO_INB_ATMU_COUNT, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %183

142:                                              ; preds = %135
  %143 = load %struct.rio_priv*, %struct.rio_priv** %12, align 8
  %144 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @RIWTAR_TRAD_VAL_SHIFT, align 4
  %152 = ashr i32 %150, %151
  %153 = call i32 @out_be32(i32* %149, i32 %152)
  %154 = load %struct.rio_priv*, %struct.rio_priv** %12, align 8
  %155 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @RIWBAR_BADD_VAL_SHIFT, align 4
  %163 = ashr i32 %161, %162
  %164 = call i32 @out_be32(i32* %160, i32 %163)
  %165 = load %struct.rio_priv*, %struct.rio_priv** %12, align 8
  %166 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* @RIWAR_ENABLE, align 4
  %173 = load i32, i32* @RIWAR_TGINT_LOCAL, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @RIWAR_RDTYP_SNOOP, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @RIWAR_WRTYP_SNOOP, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* %14, align 4
  %180 = sub i32 %179, 1
  %181 = or i32 %178, %180
  %182 = call i32 @out_be32(i32* %171, i32 %181)
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %142, %139, %105, %53, %44, %31
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
