; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_ReadRouteCache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_ReadRouteCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__***, %struct.TYPE_8__**, i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 (i32)*, i32 (%struct.TYPE_7__*, i32, i32)*, i32 (i8*, i32*, i32)* }
%struct.TYPE_7__ = type { i64, i32, i32, i64, i64, i32, i32, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"maps/%s.rcd\00", align 1
@aasworld = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FS_READ = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@RCID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s is not a route cache dump\0A\00", align 1
@RCVERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"route cache dump has wrong version %d, should be %d\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_ReadRouteCache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_QPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @MAX_QPATH, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 6), align 8
  %16 = call i32 @Com_sprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 2), align 8
  %18 = load i32, i32* @FS_READ, align 4
  %19 = call i32 %17(i8* %13, i32* %4, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %206

24:                                               ; preds = %0
  %25 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 1), align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 %25(%struct.TYPE_7__* %7, i32 48, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RCID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call i32 (i8*, i8*, ...) @AAS_Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %206

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RCVERSION, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load i32, i32* @RCVERSION, align 4
  %46 = call i32 (i8*, i8*, ...) @AAS_Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %206

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @qfalse, align 4
  store i32 %54, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %206

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 1), align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @qfalse, align 4
  store i32 %61, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %206

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 5), align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = call i64 @CRC_ProcessString(i8* %66, i32 %70)
  %72 = icmp ne i64 %64, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @qfalse, align 4
  store i32 %74, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %206

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 4), align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 1), align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = trunc i64 %82 to i32
  %84 = call i64 @CRC_ProcessString(i8* %79, i32 %83)
  %85 = icmp ne i64 %77, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %206

88:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %130, %88
  %90 = load i32, i32* %2, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %89
  %95 = load i32, i32* %4, align 4
  %96 = call %struct.TYPE_8__* @AAS_ReadCache(i32 %95)
  store %struct.TYPE_8__* %96, %struct.TYPE_8__** %8, align 8
  %97 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %97, i64 %100
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %106, align 8
  %107 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %107, i64 %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = icmp ne %struct.TYPE_8__* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %94
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %116, i64 %119
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %122, align 8
  br label %123

123:                                              ; preds = %114, %94
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %125, i64 %128
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %129, align 8
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %2, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %2, align 4
  br label %89

133:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %198, %133
  %135 = load i32, i32* %2, align 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %201

139:                                              ; preds = %134
  %140 = load i32, i32* %4, align 4
  %141 = call %struct.TYPE_8__* @AAS_ReadCache(i32 %140)
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %8, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @AAS_ClusterAreaNum(i64 %144, i64 %147)
  store i32 %148, i32* %3, align 4
  %149 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %149, i64 %152
  %154 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %154, i64 %156
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  store %struct.TYPE_8__* %158, %struct.TYPE_8__** %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %162, align 8
  %163 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %163, i64 %166
  %168 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %168, i64 %170
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = icmp ne %struct.TYPE_8__* %172, null
  br i1 %173, label %174, label %187

174:                                              ; preds = %139
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %176, i64 %179
  %181 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %180, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %181, i64 %183
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  store %struct.TYPE_8__* %175, %struct.TYPE_8__** %186, align 8
  br label %187

187:                                              ; preds = %174, %139
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %189, i64 %192
  %194 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %193, align 8
  %195 = load i32, i32* %3, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %194, i64 %196
  store %struct.TYPE_8__* %188, %struct.TYPE_8__** %197, align 8
  br label %198

198:                                              ; preds = %187
  %199 = load i32, i32* %2, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %2, align 4
  br label %134

201:                                              ; preds = %134
  %202 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 0), align 8
  %203 = load i32, i32* %4, align 4
  %204 = call i32 %202(i32 %203)
  %205 = load i32, i32* @qtrue, align 4
  store i32 %205, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %206

206:                                              ; preds = %201, %86, %73, %60, %53, %40, %32, %22
  %207 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %1, align 4
  ret i32 %208
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @AAS_Error(i8*, i8*, ...) #2

declare dso_local i64 @CRC_ProcessString(i8*, i32) #2

declare dso_local %struct.TYPE_8__* @AAS_ReadCache(i32) #2

declare dso_local i32 @AAS_ClusterAreaNum(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
