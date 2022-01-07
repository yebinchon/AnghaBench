; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_guess_candidates_dev.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_guess_candidates_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32, i32, i32 }

@HCBUFSIZ_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[Skipped]\00", align 1
@ATTACK_KERN_BF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"[Generating]\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"[Copying]\00", align 1
@OPTS_TYPE_PT_ALWAYS_ASCII = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"$HEX[%s] -> $HEX[%s]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s -> %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_get_guess_candidates_dev(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca [130 x i64], align 16
  %19 = alloca [130 x i64], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %6, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %7, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %8, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %9, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %188

44:                                               ; preds = %2
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %49
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %10, align 8
  %51 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %52 = call i64 @hcmalloc(i32 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %11, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %63, label %58

58:                                               ; preds = %44
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %58, %44
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %67 = load i8*, i8** %11, align 8
  store i8* %67, i8** %3, align 8
  br label %188

68:                                               ; preds = %58
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ATTACK_KERN_BF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %75, i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %82

78:                                               ; preds = %68
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %81 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %79, i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %82
  %93 = load i8*, i8** %11, align 8
  store i8* %93, i8** %3, align 8
  br label %188

94:                                               ; preds = %87
  store i64 0, i64* %12, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  store i64 %98, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  store i64 %102, i64* %15, align 8
  %103 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %103, i8 0, i64 40, i1 false)
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %105 = load i64, i64* %13, align 8
  store i64 %105, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %107 = load i64, i64* %15, align 8
  store i64 %107, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i32 0, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  store i32 0, i32* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 5
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 6
  store i32 0, i32* %112, align 8
  %113 = bitcast [130 x i64]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %113, i8 0, i64 1040, i1 false)
  %114 = bitcast [130 x i64]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %114, i8 0, i64 1040, i1 false)
  %115 = getelementptr inbounds [130 x i64], [130 x i64]* %18, i64 0, i64 0
  %116 = bitcast i64* %115 to i8*
  store i8* %116, i8** %20, align 8
  %117 = getelementptr inbounds [130 x i64], [130 x i64]* %19, i64 0, i64 0
  %118 = bitcast i64* %117 to i8*
  store i8* %118, i8** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %121 = getelementptr inbounds [130 x i64], [130 x i64]* %18, i64 0, i64 0
  %122 = call i32 @build_plain(%struct.TYPE_17__* %119, %struct.TYPE_15__* %120, %struct.TYPE_14__* %16, i64* %121, i32* %22)
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %125 = getelementptr inbounds [130 x i64], [130 x i64]* %19, i64 0, i64 0
  %126 = call i32 @build_plain(%struct.TYPE_17__* %123, %struct.TYPE_15__* %124, %struct.TYPE_14__* %17, i64* %125, i32* %23)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @OPTS_TYPE_PT_ALWAYS_ASCII, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  store i32 %134, i32* %24, align 4
  %135 = load i8*, i8** %20, align 8
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %24, align 4
  %138 = call i32 @need_hexify(i8* %135, i32 %136, i32 0, i32 %137)
  store i32 %138, i32* %25, align 4
  %139 = load i8*, i8** %21, align 8
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %24, align 4
  %142 = call i32 @need_hexify(i8* %139, i32 %140, i32 0, i32 %141)
  store i32 %142, i32* %26, align 4
  %143 = load i32, i32* %25, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %148, label %145

145:                                              ; preds = %94
  %146 = load i32, i32* %26, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %172

148:                                              ; preds = %145, %94
  %149 = load i8*, i8** %20, align 8
  %150 = load i32, i32* %22, align 4
  %151 = load i8*, i8** %20, align 8
  %152 = call i32 @exec_hexify(i8* %149, i32 %150, i8* %151)
  %153 = load i8*, i8** %21, align 8
  %154 = load i32, i32* %23, align 4
  %155 = load i8*, i8** %21, align 8
  %156 = call i32 @exec_hexify(i8* %153, i32 %154, i8* %155)
  %157 = load i8*, i8** %20, align 8
  %158 = load i32, i32* %22, align 4
  %159 = mul nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8 0, i8* %161, align 1
  %162 = load i8*, i8** %21, align 8
  %163 = load i32, i32* %23, align 4
  %164 = mul nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  store i8 0, i8* %166, align 1
  %167 = load i8*, i8** %11, align 8
  %168 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %169 = load i8*, i8** %20, align 8
  %170 = load i8*, i8** %21, align 8
  %171 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %167, i32 %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %169, i8* %170)
  br label %186

172:                                              ; preds = %145
  %173 = load i8*, i8** %20, align 8
  %174 = load i32, i32* %22, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 0, i8* %176, align 1
  %177 = load i8*, i8** %21, align 8
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 0, i8* %180, align 1
  %181 = load i8*, i8** %11, align 8
  %182 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %183 = load i8*, i8** %20, align 8
  %184 = load i8*, i8** %21, align 8
  %185 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %181, i32 %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %183, i8* %184)
  br label %186

186:                                              ; preds = %172, %148
  %187 = load i8*, i8** %11, align 8
  store i8* %187, i8** %3, align 8
  br label %188

188:                                              ; preds = %186, %92, %63, %43
  %189 = load i8*, i8** %3, align 8
  ret i8* %189
}

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @build_plain(%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i64*, i32*) #1

declare dso_local i32 @need_hexify(i8*, i32, i32, i32) #1

declare dso_local i32 @exec_hexify(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
