; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_uninorth_insert_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_uninorth_insert_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32*, i8*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.agp_memory = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_8__* null, align 8
@scratch_value = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"uninorth_insert_memory: entry 0x%x occupied (%x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@is_u3 = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @uninorth_insert_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_insert_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %15 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %172

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %26(%struct.TYPE_8__* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %172

35:                                               ; preds = %21
  %36 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %37 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %172

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call %struct.TYPE_9__* @A_SIZE_32(i8* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %51 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %172

59:                                               ; preds = %41
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %95, %59
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %69 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %66
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @scratch_value, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %72
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %172

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %66

98:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %165, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %102 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %168

105:                                              ; preds = %99
  %106 = load i64, i64* @is_u3, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %110 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @page_to_phys(i32 %115)
  %117 = load i32, i32* @PAGE_SHIFT, align 4
  %118 = ashr i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = or i64 %119, 2147483648
  %121 = trunc i64 %120 to i32
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %144

126:                                              ; preds = %105
  %127 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %128 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @page_to_phys(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = and i64 %135, 4294963200
  %137 = or i64 %136, 1
  %138 = trunc i64 %137 to i32
  %139 = call i32 @cpu_to_le32(i32 %138)
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %126, %108
  %145 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %146 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @page_to_phys(i32 %151)
  %153 = call i64 @__va(i32 %152)
  %154 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %155 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @page_to_phys(i32 %160)
  %162 = call i64 @__va(i32 %161)
  %163 = add i64 %162, 4096
  %164 = call i32 @flush_dcache_range(i64 %153, i64 %163)
  br label %165

165:                                              ; preds = %144
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %99

168:                                              ; preds = %99
  %169 = call i32 (...) @mb()
  %170 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %171 = call i32 @uninorth_tlbflush(%struct.agp_memory* %170)
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %168, %80, %56, %40, %32, %18
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_9__* @A_SIZE_32(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @page_to_phys(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @flush_dcache_range(i64, i64) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @uninorth_tlbflush(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
