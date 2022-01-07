; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_clk_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_clk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i8* }
%struct.iproc_pll_ctrl = type { i32 }
%struct.iproc_pll_vco_param = type { i32 }
%struct.iproc_clk_ctrl = type { i32 }
%struct.iproc_pll = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_3__**, %struct.TYPE_3__, %struct.iproc_pll_ctrl*, %struct.iproc_pll*, %struct.iproc_pll_vco_param* }
%struct.TYPE_3__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i64, i32* }
%struct.iproc_clk = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_3__**, %struct.TYPE_3__, %struct.iproc_pll_ctrl*, %struct.iproc_clk*, %struct.iproc_pll_vco_param* }
%struct.clk_hw_onecell_data = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_3__**, %struct.TYPE_3__, %struct.iproc_pll_ctrl*, %struct.clk_hw_onecell_data*, %struct.iproc_pll_vco_param* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hws = common dso_local global i32 0, align 4
@IPROC_CLK_PLL_ASIU = common dso_local global i32 0, align 4
@IPROC_CLK_PLL_SPLIT_STAT_CTRL = common dso_local global i32 0, align 4
@iproc_pll_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@iproc_clk_ops = common dso_local global i32 0, align 4
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iproc_pll_clk_setup(%struct.device_node* %0, %struct.iproc_pll_ctrl* %1, %struct.iproc_pll_vco_param* %2, i32 %3, %struct.iproc_clk_ctrl* %4, i32 %5) #0 {
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.iproc_pll_ctrl*, align 8
  %9 = alloca %struct.iproc_pll_vco_param*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iproc_clk_ctrl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iproc_pll*, align 8
  %16 = alloca %struct.iproc_clk*, align 8
  %17 = alloca %struct.clk_init_data, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.iproc_clk*, align 8
  %20 = alloca %struct.clk_hw_onecell_data*, align 8
  %21 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store %struct.iproc_pll_ctrl* %1, %struct.iproc_pll_ctrl** %8, align 8
  store %struct.iproc_pll_vco_param* %2, %struct.iproc_pll_vco_param** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.iproc_clk_ctrl* %4, %struct.iproc_clk_ctrl** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %23 = icmp ne %struct.iproc_pll_ctrl* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %6
  %29 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %11, align 8
  %30 = icmp ne %struct.iproc_clk_ctrl* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %6
  br label %351

36:                                               ; preds = %28
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.iproc_pll* @kzalloc(i32 88, i32 %37)
  store %struct.iproc_pll* %38, %struct.iproc_pll** %15, align 8
  %39 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %40 = icmp ne %struct.iproc_pll* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %351

46:                                               ; preds = %36
  %47 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %20, align 8
  %48 = bitcast %struct.clk_hw_onecell_data* %47 to %struct.iproc_pll*
  %49 = load i32, i32* @hws, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @struct_size(%struct.iproc_pll* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.iproc_pll* @kzalloc(i32 %51, i32 %52)
  %54 = bitcast %struct.iproc_pll* %53 to %struct.clk_hw_onecell_data*
  store %struct.clk_hw_onecell_data* %54, %struct.clk_hw_onecell_data** %20, align 8
  %55 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %20, align 8
  %56 = icmp ne %struct.clk_hw_onecell_data* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @WARN_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %348

62:                                               ; preds = %46
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %20, align 8
  %65 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.iproc_pll* @kcalloc(i32 %66, i32 88, i32 %67)
  %69 = bitcast %struct.iproc_pll* %68 to %struct.iproc_clk*
  store %struct.iproc_clk* %69, %struct.iproc_clk** %19, align 8
  %70 = load %struct.iproc_clk*, %struct.iproc_clk** %19, align 8
  %71 = icmp ne %struct.iproc_clk* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %344

77:                                               ; preds = %62
  %78 = load %struct.device_node*, %struct.device_node** %7, align 8
  %79 = call i8* @of_iomap(%struct.device_node* %78, i32 0)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %82 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %84 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %340

92:                                               ; preds = %77
  %93 = load %struct.device_node*, %struct.device_node** %7, align 8
  %94 = call i8* @of_iomap(%struct.device_node* %93, i32 1)
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %97 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %99 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IPROC_CLK_PLL_ASIU, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %92
  %105 = load %struct.device_node*, %struct.device_node** %7, align 8
  %106 = call i8* @of_iomap(%struct.device_node* %105, i32 2)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %109 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %111 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i64 @WARN_ON(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %325

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %92
  %121 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %122 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IPROC_CLK_PLL_SPLIT_STAT_CTRL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %120
  %128 = load %struct.device_node*, %struct.device_node** %7, align 8
  %129 = call i8* @of_iomap(%struct.device_node* %128, i32 2)
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %132 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %134 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %127
  br label %314

138:                                              ; preds = %127
  br label %145

139:                                              ; preds = %120
  %140 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %141 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %144 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %139, %138
  %146 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %147 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %148 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %147, i32 0, i32 8
  store %struct.iproc_pll_ctrl* %146, %struct.iproc_pll_ctrl** %148, align 8
  %149 = load %struct.iproc_clk*, %struct.iproc_clk** %19, align 8
  %150 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %149, i64 0
  store %struct.iproc_clk* %150, %struct.iproc_clk** %16, align 8
  %151 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %152 = bitcast %struct.iproc_pll* %151 to %struct.iproc_clk*
  %153 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %154 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %153, i32 0, i32 9
  store %struct.iproc_clk* %152, %struct.iproc_clk** %154, align 8
  %155 = load %struct.device_node*, %struct.device_node** %7, align 8
  %156 = getelementptr inbounds %struct.device_node, %struct.device_node* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 0
  store i8* %157, i8** %158, align 8
  %159 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 4
  store i32* @iproc_pll_ops, i32** %159, align 8
  %160 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load %struct.device_node*, %struct.device_node** %7, align 8
  %162 = call i8* @of_clk_get_parent_name(%struct.device_node* %161, i32 0)
  store i8* %162, i8** %18, align 8
  %163 = load i8*, i8** %18, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %145
  br label %167

166:                                              ; preds = %145
  br label %167

167:                                              ; preds = %166, %165
  %168 = phi i8** [ %18, %165 ], [ null, %166 ]
  %169 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 1
  store i8** %168, i8*** %169, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = icmp ne i8* %170, null
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 0
  %174 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 2
  store i32 %173, i32* %174, align 8
  %175 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %176 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  store %struct.clk_init_data* %17, %struct.clk_init_data** %177, align 8
  %178 = load %struct.iproc_pll_vco_param*, %struct.iproc_pll_vco_param** %9, align 8
  %179 = icmp ne %struct.iproc_pll_vco_param* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %167
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %183 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  %184 = load %struct.iproc_pll_vco_param*, %struct.iproc_pll_vco_param** %9, align 8
  %185 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %186 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %185, i32 0, i32 10
  store %struct.iproc_pll_vco_param* %184, %struct.iproc_pll_vco_param** %186, align 8
  br label %187

187:                                              ; preds = %180, %167
  %188 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %189 = call i32 @iproc_pll_sw_cfg(%struct.iproc_pll* %188)
  %190 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %191 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %190, i32 0, i32 7
  %192 = call i32 @clk_hw_register(i32* null, %struct.TYPE_3__* %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i64 @WARN_ON(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %300

197:                                              ; preds = %187
  %198 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %199 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %198, i32 0, i32 7
  %200 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %20, align 8
  %201 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %200, i32 0, i32 6
  %202 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %202, i64 0
  store %struct.TYPE_3__* %199, %struct.TYPE_3__** %203, align 8
  store i32 1, i32* %13, align 4
  br label %204

204:                                              ; preds = %271, %197
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %274

208:                                              ; preds = %204
  %209 = call i32 @memset(%struct.clk_init_data* %17, i32 0, i32 40)
  %210 = load %struct.device_node*, %struct.device_node** %7, align 8
  %211 = getelementptr inbounds %struct.device_node, %struct.device_node* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %18, align 8
  %213 = load %struct.device_node*, %struct.device_node** %7, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @of_property_read_string_index(%struct.device_node* %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %214, i8** %21)
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i64 @WARN_ON(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %208
  br label %285

220:                                              ; preds = %208
  %221 = load %struct.iproc_clk*, %struct.iproc_clk** %19, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %221, i64 %223
  store %struct.iproc_clk* %224, %struct.iproc_clk** %16, align 8
  %225 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %226 = bitcast %struct.iproc_pll* %225 to %struct.iproc_clk*
  %227 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %228 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %227, i32 0, i32 9
  store %struct.iproc_clk* %226, %struct.iproc_clk** %228, align 8
  %229 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %11, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %229, i64 %231
  %233 = bitcast %struct.iproc_clk_ctrl* %232 to %struct.iproc_pll_ctrl*
  %234 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %235 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %234, i32 0, i32 8
  store %struct.iproc_pll_ctrl* %233, %struct.iproc_pll_ctrl** %235, align 8
  %236 = load i8*, i8** %21, align 8
  %237 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 0
  store i8* %236, i8** %237, align 8
  %238 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 4
  store i32* @iproc_clk_ops, i32** %238, align 8
  %239 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 3
  store i64 0, i64* %239, align 8
  %240 = load i8*, i8** %18, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %220
  br label %244

243:                                              ; preds = %220
  br label %244

244:                                              ; preds = %243, %242
  %245 = phi i8** [ %18, %242 ], [ null, %243 ]
  %246 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 1
  store i8** %245, i8*** %246, align 8
  %247 = load i8*, i8** %18, align 8
  %248 = icmp ne i8* %247, null
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 1, i32 0
  %251 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 2
  store i32 %250, i32* %251, align 8
  %252 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %253 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %252, i32 0, i32 7
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  store %struct.clk_init_data* %17, %struct.clk_init_data** %254, align 8
  %255 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %256 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %255, i32 0, i32 7
  %257 = call i32 @clk_hw_register(i32* null, %struct.TYPE_3__* %256)
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %14, align 4
  %259 = call i64 @WARN_ON(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %244
  br label %285

262:                                              ; preds = %244
  %263 = load %struct.iproc_clk*, %struct.iproc_clk** %16, align 8
  %264 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %263, i32 0, i32 7
  %265 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %20, align 8
  %266 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %265, i32 0, i32 6
  %267 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %267, i64 %269
  store %struct.TYPE_3__* %264, %struct.TYPE_3__** %270, align 8
  br label %271

271:                                              ; preds = %262
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %204

274:                                              ; preds = %204
  %275 = load %struct.device_node*, %struct.device_node** %7, align 8
  %276 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %277 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %20, align 8
  %278 = bitcast %struct.clk_hw_onecell_data* %277 to %struct.iproc_pll*
  %279 = call i32 @of_clk_add_hw_provider(%struct.device_node* %275, i32 %276, %struct.iproc_pll* %278)
  store i32 %279, i32* %14, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i64 @WARN_ON(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %274
  br label %285

284:                                              ; preds = %274
  br label %351

285:                                              ; preds = %283, %261, %219
  br label %286

286:                                              ; preds = %290, %285
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %13, align 4
  %289 = icmp sge i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %286
  %291 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %20, align 8
  %292 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %291, i32 0, i32 6
  %293 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %293, i64 %295
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %296, align 8
  %298 = call i32 @clk_hw_unregister(%struct.TYPE_3__* %297)
  br label %286

299:                                              ; preds = %286
  br label %300

300:                                              ; preds = %299, %196
  %301 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %302 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %305 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %303, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %300
  %309 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %310 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @iounmap(i64 %311)
  br label %313

313:                                              ; preds = %308, %300
  br label %314

314:                                              ; preds = %313, %137
  %315 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %316 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %321 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = call i32 @iounmap(i64 %322)
  br label %324

324:                                              ; preds = %319, %314
  br label %325

325:                                              ; preds = %324, %118
  %326 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %327 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %325
  %331 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %332 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = call i32 @iounmap(i64 %333)
  br label %335

335:                                              ; preds = %330, %325
  %336 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %337 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @iounmap(i64 %338)
  br label %340

340:                                              ; preds = %335, %91
  %341 = load %struct.iproc_clk*, %struct.iproc_clk** %19, align 8
  %342 = bitcast %struct.iproc_clk* %341 to %struct.iproc_pll*
  %343 = call i32 @kfree(%struct.iproc_pll* %342)
  br label %344

344:                                              ; preds = %340, %76
  %345 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %20, align 8
  %346 = bitcast %struct.clk_hw_onecell_data* %345 to %struct.iproc_pll*
  %347 = call i32 @kfree(%struct.iproc_pll* %346)
  br label %348

348:                                              ; preds = %344, %61
  %349 = load %struct.iproc_pll*, %struct.iproc_pll** %15, align 8
  %350 = call i32 @kfree(%struct.iproc_pll* %349)
  br label %351

351:                                              ; preds = %348, %284, %45, %35
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.iproc_pll* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.iproc_pll*, i32, i32) #1

declare dso_local %struct.iproc_pll* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @of_iomap(%struct.device_node*, i32) #1

declare dso_local i8* @of_clk_get_parent_name(%struct.device_node*, i32) #1

declare dso_local i32 @iproc_pll_sw_cfg(%struct.iproc_pll*) #1

declare dso_local i32 @clk_hw_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.clk_init_data*, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.iproc_pll*) #1

declare dso_local i32 @clk_hw_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.iproc_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
