; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ParseScores.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ParseScores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i8** }
%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i8* }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_ParseScores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ParseScores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @CG_Argv(i32 1)
  %4 = call i8* @atoi(i32 %3)
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %7 = load i32, i32* @MAX_CLIENTS, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @MAX_CLIENTS, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %9, %0
  %12 = call i32 @CG_Argv(i32 2)
  %13 = call i8* @atoi(i32 %12)
  %14 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %13, i8** %15, align 8
  %16 = call i32 @CG_Argv(i32 3)
  %17 = call i8* @atoi(i32 %16)
  %18 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %21 = call i32 @memset(%struct.TYPE_6__* %20, i32 0, i32 8)
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %230, %11
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %233

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = mul nsw i32 %27, 14
  %29 = add nsw i32 %28, 4
  %30 = call i32 @CG_Argv(i32 %29)
  %31 = call i8* @atoi(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 8
  %38 = load i32, i32* %1, align 4
  %39 = mul nsw i32 %38, 14
  %40 = add nsw i32 %39, 5
  %41 = call i32 @CG_Argv(i32 %40)
  %42 = call i8* @atoi(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* %1, align 4
  %49 = mul nsw i32 %48, 14
  %50 = add nsw i32 %49, 6
  %51 = call i32 @CG_Argv(i32 %50)
  %52 = call i8* @atoi(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 13
  store i8* %52, i8** %57, align 8
  %58 = load i32, i32* %1, align 4
  %59 = mul nsw i32 %58, 14
  %60 = add nsw i32 %59, 7
  %61 = call i32 @CG_Argv(i32 %60)
  %62 = call i8* @atoi(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 12
  store i8* %62, i8** %67, align 8
  %68 = load i32, i32* %1, align 4
  %69 = mul nsw i32 %68, 14
  %70 = add nsw i32 %69, 8
  %71 = call i32 @CG_Argv(i32 %70)
  %72 = call i8* @atoi(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 11
  store i8* %72, i8** %77, align 8
  %78 = load i32, i32* %1, align 4
  %79 = mul nsw i32 %78, 14
  %80 = add nsw i32 %79, 9
  %81 = call i32 @CG_Argv(i32 %80)
  %82 = call i8* @atoi(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %2, align 4
  %84 = load i32, i32* %1, align 4
  %85 = mul nsw i32 %84, 14
  %86 = add nsw i32 %85, 10
  %87 = call i32 @CG_Argv(i32 %86)
  %88 = call i8* @atoi(i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 10
  store i8* %88, i8** %93, align 8
  %94 = load i32, i32* %1, align 4
  %95 = mul nsw i32 %94, 14
  %96 = add nsw i32 %95, 11
  %97 = call i32 @CG_Argv(i32 %96)
  %98 = call i8* @atoi(i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 9
  store i8* %98, i8** %103, align 8
  %104 = load i32, i32* %1, align 4
  %105 = mul nsw i32 %104, 14
  %106 = add nsw i32 %105, 12
  %107 = call i32 @CG_Argv(i32 %106)
  %108 = call i8* @atoi(i32 %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 8
  store i8* %108, i8** %113, align 8
  %114 = load i32, i32* %1, align 4
  %115 = mul nsw i32 %114, 14
  %116 = add nsw i32 %115, 13
  %117 = call i32 @CG_Argv(i32 %116)
  %118 = call i8* @atoi(i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 7
  store i8* %118, i8** %123, align 8
  %124 = load i32, i32* %1, align 4
  %125 = mul nsw i32 %124, 14
  %126 = add nsw i32 %125, 14
  %127 = call i32 @CG_Argv(i32 %126)
  %128 = call i8* @atoi(i32 %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %130 = load i32, i32* %1, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 6
  store i8* %128, i8** %133, align 8
  %134 = load i32, i32* %1, align 4
  %135 = mul nsw i32 %134, 14
  %136 = add nsw i32 %135, 15
  %137 = call i32 @CG_Argv(i32 %136)
  %138 = call i8* @atoi(i32 %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %140 = load i32, i32* %1, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  store i8* %138, i8** %143, align 8
  %144 = load i32, i32* %1, align 4
  %145 = mul nsw i32 %144, 14
  %146 = add nsw i32 %145, 16
  %147 = call i32 @CG_Argv(i32 %146)
  %148 = call i8* @atoi(i32 %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  store i8* %148, i8** %153, align 8
  %154 = load i32, i32* %1, align 4
  %155 = mul nsw i32 %154, 14
  %156 = add nsw i32 %155, 17
  %157 = call i32 @CG_Argv(i32 %156)
  %158 = call i8* @atoi(i32 %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  store i8* %158, i8** %163, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %26
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %173 = load i32, i32* %1, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @MAX_CLIENTS, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %171, %26
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %182 = load i32, i32* %1, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %180, %171
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %188 = load i32, i32* %1, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  store i8* %192, i8** %202, align 8
  %203 = load i32, i32* %2, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  store i32 %203, i32* %213, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %216 = load i32, i32* %1, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 8
  %226 = load i32, i32* %1, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  store i32 %224, i32* %229, align 4
  br label %230

230:                                              ; preds = %186
  %231 = load i32, i32* %1, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %1, align 4
  br label %22

233:                                              ; preds = %22
  ret void
}

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @CG_Argv(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
