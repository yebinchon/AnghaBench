; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_SplitNodePortals.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_SplitNodePortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_14__** }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_14__**, %struct.TYPE_12__** }

@mapplanes = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"SplitNodePortals: mislinked portal\00", align 1
@SPLIT_WINDING_EPSILON = common dso_local global i32 0, align 4
@c_tinyportals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SplitNodePortals(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i64 %16
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %20, i64 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %25, i64 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %7, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %3, align 8
  br label %31

31:                                               ; preds = %203, %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %205

34:                                               ; preds = %31
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %37, i64 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = icmp eq %struct.TYPE_14__* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %55

43:                                               ; preds = %34
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %46, i64 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = icmp eq %struct.TYPE_14__* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %54

52:                                               ; preds = %43
  %53 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %51
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %58, i64 %60
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %4, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %65, i64 %70
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %8, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %76, i64 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = call i32 @RemovePortalFromNode(%struct.TYPE_12__* %73, %struct.TYPE_14__* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %83, i64 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = call i32 @RemovePortalFromNode(%struct.TYPE_12__* %80, %struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SPLIT_WINDING_EPSILON, align 4
  %97 = call i32 @ClipWindingEpsilon(i32* %89, i32 %92, i32 %95, i32 %96, i32** %11, i32** %12)
  %98 = load i32*, i32** %11, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %55
  %101 = load i32*, i32** %11, align 8
  %102 = call i64 @WindingIsTiny(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @FreeWinding(i32* %105)
  store i32* null, i32** %11, align 8
  %107 = load i32, i32* @c_tinyportals, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @c_tinyportals, align 4
  br label %109

109:                                              ; preds = %104, %100, %55
  %110 = load i32*, i32** %12, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32*, i32** %12, align 8
  %114 = call i64 @WindingIsTiny(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @FreeWinding(i32* %117)
  store i32* null, i32** %12, align 8
  %119 = load i32, i32* @c_tinyportals, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @c_tinyportals, align 4
  br label %121

121:                                              ; preds = %116, %112, %109
  %122 = load i32*, i32** %11, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load i32*, i32** %12, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  br label %203

128:                                              ; preds = %124, %121
  %129 = load i32*, i32** %11, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %147, label %131

131:                                              ; preds = %128
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @FreeWinding(i32* %132)
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %140 = call i32 @AddPortalToNodes(%struct.TYPE_12__* %137, %struct.TYPE_14__* %138, %struct.TYPE_14__* %139)
  br label %146

141:                                              ; preds = %131
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %145 = call i32 @AddPortalToNodes(%struct.TYPE_12__* %142, %struct.TYPE_14__* %143, %struct.TYPE_14__* %144)
  br label %146

146:                                              ; preds = %141, %136
  br label %203

147:                                              ; preds = %128
  %148 = load i32*, i32** %12, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %166, label %150

150:                                              ; preds = %147
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @FreeWinding(i32* %151)
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = call i32 @AddPortalToNodes(%struct.TYPE_12__* %156, %struct.TYPE_14__* %157, %struct.TYPE_14__* %158)
  br label %165

160:                                              ; preds = %150
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %164 = call i32 @AddPortalToNodes(%struct.TYPE_12__* %161, %struct.TYPE_14__* %162, %struct.TYPE_14__* %163)
  br label %165

165:                                              ; preds = %160, %155
  br label %203

166:                                              ; preds = %147
  %167 = call %struct.TYPE_12__* (...) @AllocPortal()
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %5, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = bitcast %struct.TYPE_12__* %168 to i8*
  %171 = bitcast %struct.TYPE_12__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 8 %171, i64 24, i1 false)
  %172 = load i32*, i32** %12, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  store i32* %172, i32** %174, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @FreeWinding(i32* %177)
  %179 = load i32*, i32** %11, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i32* %179, i32** %181, align 8
  %182 = load i32, i32* %9, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %166
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %188 = call i32 @AddPortalToNodes(%struct.TYPE_12__* %185, %struct.TYPE_14__* %186, %struct.TYPE_14__* %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %192 = call i32 @AddPortalToNodes(%struct.TYPE_12__* %189, %struct.TYPE_14__* %190, %struct.TYPE_14__* %191)
  br label %202

193:                                              ; preds = %166
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = call i32 @AddPortalToNodes(%struct.TYPE_12__* %194, %struct.TYPE_14__* %195, %struct.TYPE_14__* %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %201 = call i32 @AddPortalToNodes(%struct.TYPE_12__* %198, %struct.TYPE_14__* %199, %struct.TYPE_14__* %200)
  br label %202

202:                                              ; preds = %193, %184
  br label %203

203:                                              ; preds = %202, %165, %146, %127
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %204, %struct.TYPE_12__** %3, align 8
  br label %31

205:                                              ; preds = %31
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %207, align 8
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @RemovePortalFromNode(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ClipWindingEpsilon(i32*, i32, i32, i32, i32**, i32**) #1

declare dso_local i64 @WindingIsTiny(i32*) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local i32 @AddPortalToNodes(%struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @AllocPortal(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
