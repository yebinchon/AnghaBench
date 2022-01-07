; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-composite.c_clk_composite_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-composite.c_clk_composite_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.clk_composite = type { %struct.clk_hw*, %struct.clk_hw*, %struct.clk_ops*, %struct.clk_ops* }
%struct.clk_ops = type { i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i64 (%struct.clk_hw*, i64, i64*)*, i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@CLK_SET_RATE_NO_REPARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"clk: clk_composite_determine_rate function called, but no mux or rate callback set!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_composite_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_composite_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_composite*, align 8
  %7 = alloca %struct.clk_ops*, align 8
  %8 = alloca %struct.clk_ops*, align 8
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca %struct.clk_hw*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %20 = call %struct.clk_composite* @to_clk_composite(%struct.clk_hw* %19)
  store %struct.clk_composite* %20, %struct.clk_composite** %6, align 8
  %21 = load %struct.clk_composite*, %struct.clk_composite** %6, align 8
  %22 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %21, i32 0, i32 3
  %23 = load %struct.clk_ops*, %struct.clk_ops** %22, align 8
  store %struct.clk_ops* %23, %struct.clk_ops** %7, align 8
  %24 = load %struct.clk_composite*, %struct.clk_composite** %6, align 8
  %25 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %24, i32 0, i32 2
  %26 = load %struct.clk_ops*, %struct.clk_ops** %25, align 8
  store %struct.clk_ops* %26, %struct.clk_ops** %8, align 8
  %27 = load %struct.clk_composite*, %struct.clk_composite** %6, align 8
  %28 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %27, i32 0, i32 1
  %29 = load %struct.clk_hw*, %struct.clk_hw** %28, align 8
  store %struct.clk_hw* %29, %struct.clk_hw** %9, align 8
  %30 = load %struct.clk_composite*, %struct.clk_composite** %6, align 8
  %31 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %30, i32 0, i32 0
  %32 = load %struct.clk_hw*, %struct.clk_hw** %31, align 8
  store %struct.clk_hw* %32, %struct.clk_hw** %10, align 8
  store i64 0, i64* %14, align 8
  %33 = load i64, i64* @ULONG_MAX, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %35 = icmp ne %struct.clk_hw* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %2
  %37 = load %struct.clk_ops*, %struct.clk_ops** %7, align 8
  %38 = icmp ne %struct.clk_ops* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.clk_ops*, %struct.clk_ops** %7, align 8
  %41 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %40, i32 0, i32 0
  %42 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %41, align 8
  %43 = icmp ne i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %46 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %47 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %45, %struct.clk_hw* %46)
  %48 = load %struct.clk_ops*, %struct.clk_ops** %7, align 8
  %49 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %48, i32 0, i32 0
  %50 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %49, align 8
  %51 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %52 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %53 = call i32 %50(%struct.clk_hw* %51, %struct.clk_rate_request* %52)
  store i32 %53, i32* %3, align 4
  br label %206

54:                                               ; preds = %39, %36, %2
  %55 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %56 = icmp ne %struct.clk_hw* %55, null
  br i1 %56, label %57, label %181

57:                                               ; preds = %54
  %58 = load %struct.clk_ops*, %struct.clk_ops** %7, align 8
  %59 = icmp ne %struct.clk_ops* %58, null
  br i1 %59, label %60, label %181

60:                                               ; preds = %57
  %61 = load %struct.clk_ops*, %struct.clk_ops** %7, align 8
  %62 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %61, i32 0, i32 1
  %63 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %62, align 8
  %64 = icmp ne i64 (%struct.clk_hw*, i64, i64*)* %63, null
  br i1 %64, label %65, label %181

65:                                               ; preds = %60
  %66 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %67 = icmp ne %struct.clk_hw* %66, null
  br i1 %67, label %68, label %181

68:                                               ; preds = %65
  %69 = load %struct.clk_ops*, %struct.clk_ops** %8, align 8
  %70 = icmp ne %struct.clk_ops* %69, null
  br i1 %70, label %71, label %181

71:                                               ; preds = %68
  %72 = load %struct.clk_ops*, %struct.clk_ops** %8, align 8
  %73 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %181

76:                                               ; preds = %71
  %77 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %78 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %77, i32 0, i32 2
  store %struct.clk_hw* null, %struct.clk_hw** %78, align 8
  %79 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %80 = call i32 @clk_hw_get_flags(%struct.clk_hw* %79)
  %81 = load i32, i32* @CLK_SET_RATE_NO_REPARENT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %76
  %85 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %86 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %85)
  store %struct.clk_hw* %86, %struct.clk_hw** %11, align 8
  %87 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %88 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %89 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %88, i32 0, i32 2
  store %struct.clk_hw* %87, %struct.clk_hw** %89, align 8
  %90 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %91 = call i8* @clk_hw_get_rate(%struct.clk_hw* %90)
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %94 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.clk_ops*, %struct.clk_ops** %7, align 8
  %96 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %95, i32 0, i32 1
  %97 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %96, align 8
  %98 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %99 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %100 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %103 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %102, i32 0, i32 0
  %104 = call i64 %97(%struct.clk_hw* %98, i64 %101, i64* %103)
  store i64 %104, i64* %17, align 8
  %105 = load i64, i64* %17, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %84
  %108 = load i64, i64* %17, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %3, align 4
  br label %206

110:                                              ; preds = %84
  %111 = load i64, i64* %17, align 8
  %112 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %113 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  store i32 0, i32* %3, align 4
  br label %206

114:                                              ; preds = %76
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %174, %114
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %118 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %117)
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %177

120:                                              ; preds = %115
  %121 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %121, i32 %122)
  store %struct.clk_hw* %123, %struct.clk_hw** %11, align 8
  %124 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %125 = icmp ne %struct.clk_hw* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  br label %174

127:                                              ; preds = %120
  %128 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %129 = call i8* @clk_hw_get_rate(%struct.clk_hw* %128)
  %130 = ptrtoint i8* %129 to i64
  store i64 %130, i64* %12, align 8
  %131 = load %struct.clk_ops*, %struct.clk_ops** %7, align 8
  %132 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %131, i32 0, i32 1
  %133 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %132, align 8
  %134 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %135 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %136 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i64 %133(%struct.clk_hw* %134, i64 %137, i64* %12)
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  br label %174

142:                                              ; preds = %127
  %143 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %144 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %13, align 8
  %147 = sub nsw i64 %145, %146
  %148 = call i64 @abs(i64 %147)
  store i64 %148, i64* %15, align 8
  %149 = load i64, i64* %15, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  %152 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %153 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %152, i32 0, i32 2
  %154 = load %struct.clk_hw*, %struct.clk_hw** %153, align 8
  %155 = icmp ne %struct.clk_hw* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* %15, align 8
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156, %151, %142
  %161 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %162 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %163 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %162, i32 0, i32 2
  store %struct.clk_hw* %161, %struct.clk_hw** %163, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %166 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %15, align 8
  store i64 %167, i64* %16, align 8
  %168 = load i64, i64* %13, align 8
  store i64 %168, i64* %14, align 8
  br label %169

169:                                              ; preds = %160, %156
  %170 = load i64, i64* %15, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store i32 0, i32* %3, align 4
  br label %206

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173, %141, %126
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %18, align 4
  br label %115

177:                                              ; preds = %115
  %178 = load i64, i64* %14, align 8
  %179 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %180 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  store i32 0, i32* %3, align 4
  br label %206

181:                                              ; preds = %71, %68, %65, %60, %57, %54
  %182 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %183 = icmp ne %struct.clk_hw* %182, null
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  %185 = load %struct.clk_ops*, %struct.clk_ops** %8, align 8
  %186 = icmp ne %struct.clk_ops* %185, null
  br i1 %186, label %187, label %202

187:                                              ; preds = %184
  %188 = load %struct.clk_ops*, %struct.clk_ops** %8, align 8
  %189 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %188, i32 0, i32 0
  %190 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %189, align 8
  %191 = icmp ne i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %187
  %193 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %194 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %195 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %193, %struct.clk_hw* %194)
  %196 = load %struct.clk_ops*, %struct.clk_ops** %8, align 8
  %197 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %196, i32 0, i32 0
  %198 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %197, align 8
  %199 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %200 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %201 = call i32 %198(%struct.clk_hw* %199, %struct.clk_rate_request* %200)
  store i32 %201, i32* %3, align 4
  br label %206

202:                                              ; preds = %187, %184, %181
  %203 = call i32 @pr_err(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %192, %177, %172, %110, %107, %44
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.clk_composite* @to_clk_composite(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(%struct.clk_hw*, %struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
