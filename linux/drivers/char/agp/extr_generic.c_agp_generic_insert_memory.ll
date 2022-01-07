; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_generic_insert_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_generic_insert_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i32, i32, i32*, %struct.agp_bridge_data* }
%struct.agp_bridge_data = type { %struct.TYPE_6__*, i64, i8* }
%struct.TYPE_6__ = type { i32, i32 (%struct.agp_bridge_data*, i32)*, i32 (%struct.agp_memory*)*, i32 (%struct.agp_bridge_data*, i32, i32)*, i32 (...)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@agp_memory_reserved = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_insert_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.agp_bridge_data*, align 8
  %13 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %15 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %14, i32 0, i32 4
  %16 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %15, align 8
  store %struct.agp_bridge_data* %16, %struct.agp_bridge_data** %12, align 8
  %17 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %18 = icmp ne %struct.agp_bridge_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %206

22:                                               ; preds = %3
  %23 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %24 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %206

28:                                               ; preds = %22
  %29 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %30 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  %32 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %33 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %60 [
    i32 128, label %37
    i32 130, label %42
    i32 129, label %47
    i32 132, label %52
    i32 131, label %57
  ]

37:                                               ; preds = %28
  %38 = load i8*, i8** %11, align 8
  %39 = call %struct.TYPE_8__* @A_SIZE_8(i8* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %61

42:                                               ; preds = %28
  %43 = load i8*, i8** %11, align 8
  %44 = call %struct.TYPE_10__* @A_SIZE_16(i8* %43)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %61

47:                                               ; preds = %28
  %48 = load i8*, i8** %11, align 8
  %49 = call %struct.TYPE_9__* @A_SIZE_32(i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %61

52:                                               ; preds = %28
  %53 = load i8*, i8** %11, align 8
  %54 = call %struct.TYPE_7__* @A_SIZE_FIX(i8* %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  br label %61

57:                                               ; preds = %28
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %206

60:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %52, %47, %42, %37
  %62 = load i32, i32* @agp_memory_reserved, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sdiv i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %73 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %206

79:                                               ; preds = %70
  %80 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %81 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32 (%struct.agp_bridge_data*, i32)*, i32 (%struct.agp_bridge_data*, i32)** %83, align 8
  %85 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 %84(%struct.agp_bridge_data* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %206

93:                                               ; preds = %79
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %96 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %94, %97
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %104 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101, %93
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %206

112:                                              ; preds = %101
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %136, %112
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %118 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  %121 = icmp slt i32 %115, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %114
  %123 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %124 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %125 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = call i32 @readl(i64 %129)
  %131 = call i32 @PGE_EMPTY(%struct.agp_bridge_data* %123, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %122
  %134 = load i32, i32* @EBUSY, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %206

136:                                              ; preds = %122
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %114

139:                                              ; preds = %114
  %140 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %141 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %139
  %145 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %146 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i32 (...)*, i32 (...)** %148, align 8
  %150 = call i32 (...) %149()
  %151 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %152 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %151, i32 0, i32 2
  store i32 1, i32* %152, align 8
  br label %153

153:                                              ; preds = %144, %139
  store i64 0, i64* %9, align 8
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %185, %153
  %156 = load i64, i64* %9, align 8
  %157 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %158 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = icmp ult i64 %156, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %155
  %163 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %164 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load i32 (%struct.agp_bridge_data*, i32, i32)*, i32 (%struct.agp_bridge_data*, i32, i32)** %166, align 8
  %168 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %169 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %170 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @page_to_phys(i32 %174)
  %176 = load i32, i32* %13, align 4
  %177 = call i32 %167(%struct.agp_bridge_data* %168, i32 %175, i32 %176)
  %178 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %179 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %180, %182
  %184 = call i32 @writel(i32 %177, i64 %183)
  br label %185

185:                                              ; preds = %162
  %186 = load i64, i64* %9, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %9, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %155

190:                                              ; preds = %155
  %191 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %192 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %193, %195
  %197 = sub nsw i64 %196, 1
  %198 = call i32 @readl(i64 %197)
  %199 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %200 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %202, align 8
  %204 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %205 = call i32 %203(%struct.agp_memory* %204)
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %190, %133, %109, %90, %76, %57, %27, %19
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.TYPE_8__* @A_SIZE_8(i8*) #1

declare dso_local %struct.TYPE_10__* @A_SIZE_16(i8*) #1

declare dso_local %struct.TYPE_9__* @A_SIZE_32(i8*) #1

declare dso_local %struct.TYPE_7__* @A_SIZE_FIX(i8*) #1

declare dso_local i32 @PGE_EMPTY(%struct.agp_bridge_data*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @page_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
