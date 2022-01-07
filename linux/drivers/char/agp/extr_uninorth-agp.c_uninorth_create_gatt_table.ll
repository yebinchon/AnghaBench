; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_uninorth_create_gatt_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_uninorth_create_gatt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.page** }
%struct.page = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.agp_bridge_data = type { i32, i32*, i32, i32*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@LVL2_APER_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uninorth_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_KERNEL_NCG = common dso_local global i32 0, align 4
@is_u3 = common dso_local global i64 0, align 8
@agp_bridge = common dso_local global %struct.TYPE_7__* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@scratch_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_bridge_data*)* @uninorth_create_gatt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_create_gatt_table(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  %12 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %13 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %12, i32 0, i32 5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LVL2_APER_SIZE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %196

22:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  %23 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %24 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %27 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %71, %22
  %30 = load i8*, i8** %10, align 8
  %31 = call %struct.TYPE_8__* @A_SIZE_32(i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call %struct.TYPE_8__* @A_SIZE_32(i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call %struct.TYPE_8__* @A_SIZE_32(i8* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @__get_free_pages(i32 %42, i32 %43)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %52 = call i8* @A_IDX32(%struct.agp_bridge_data* %51)
  %53 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %54 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  br label %59

55:                                               ; preds = %29
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %58 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %48
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %66 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %65, i32 0, i32 5
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %64, %69
  br label %71

71:                                               ; preds = %63, %60
  %72 = phi i1 [ false, %60 ], [ %70, %63 ]
  br i1 %72, label %29, label %73

73:                                               ; preds = %71
  %74 = load i8*, i8** %4, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %196

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.page** @kmalloc_array(i32 %81, i32 8, i32 %82)
  store %struct.page** %83, %struct.page*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uninorth_priv, i32 0, i32 0), align 8
  %84 = load %struct.page**, %struct.page*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uninorth_priv, i32 0, i32 0), align 8
  %85 = icmp eq %struct.page** %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %183

87:                                               ; preds = %79
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 1, %90
  %92 = mul nsw i32 %89, %91
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %88, i64 %94
  store i8* %95, i8** %5, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = call %struct.page* @virt_to_page(i8* %96)
  store %struct.page* %97, %struct.page** %11, align 8
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %111, %87
  %99 = load %struct.page*, %struct.page** %11, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call %struct.page* @virt_to_page(i8* %100)
  %102 = icmp ule %struct.page* %99, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load %struct.page*, %struct.page** %11, align 8
  %105 = call i32 @SetPageReserved(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %11, align 8
  %107 = load %struct.page**, %struct.page*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uninorth_priv, i32 0, i32 0), align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.page*, %struct.page** %107, i64 %109
  store %struct.page* %106, %struct.page** %110, align 8
  br label %111

111:                                              ; preds = %103
  %112 = load %struct.page*, %struct.page** %11, align 8
  %113 = getelementptr inbounds %struct.page, %struct.page* %112, i32 1
  store %struct.page* %113, %struct.page** %11, align 8
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %98

116:                                              ; preds = %98
  %117 = load i8*, i8** %4, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %120 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = load i8*, i8** %5, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = add i64 %124, 1
  %126 = call i32 @flush_dcache_range(i64 %122, i64 %125)
  %127 = load %struct.page**, %struct.page*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uninorth_priv, i32 0, i32 0), align 8
  %128 = load i32, i32* %7, align 4
  %129 = shl i32 1, %128
  %130 = load i32, i32* @PAGE_KERNEL_NCG, align 4
  %131 = call i32* @vmap(%struct.page** %127, i32 %129, i32 0, i32 %130)
  %132 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %133 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %132, i32 0, i32 1
  store i32* %131, i32** %133, align 8
  %134 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %135 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %116
  br label %183

139:                                              ; preds = %116
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @virt_to_phys(i8* %140)
  %142 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %143 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load i64, i64* @is_u3, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @page_to_phys(i32 %149)
  %151 = load i32, i32* @PAGE_SHIFT, align 4
  %152 = ashr i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = or i64 %153, 2147483648
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* @scratch_value, align 4
  br label %166

156:                                              ; preds = %139
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @page_to_phys(i32 %159)
  %161 = sext i32 %160 to i64
  %162 = and i64 %161, 4294963200
  %163 = or i64 %162, 1
  %164 = trunc i64 %163 to i32
  %165 = call i32 @cpu_to_le32(i32 %164)
  store i32 %165, i32* @scratch_value, align 4
  br label %166

166:                                              ; preds = %156, %146
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %179, %166
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load i32, i32* @scratch_value, align 4
  %173 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %174 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  br label %179

179:                                              ; preds = %171
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %167

182:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %196

183:                                              ; preds = %138, %86
  %184 = load %struct.page**, %struct.page*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uninorth_priv, i32 0, i32 0), align 8
  %185 = call i32 @kfree(%struct.page** %184)
  %186 = load i8*, i8** %4, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i8*, i8** %4, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @free_pages(i64 %190, i32 %191)
  br label %193

193:                                              ; preds = %188, %183
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %193, %182, %76, %19
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.TYPE_8__* @A_SIZE_32(i8*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i8* @A_IDX32(%struct.agp_bridge_data*) #1

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @SetPageReserved(%struct.page*) #1

declare dso_local i32 @flush_dcache_range(i64, i64) #1

declare dso_local i32* @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @page_to_phys(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
