; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_dmlab_serialise_model.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_dmlab_serialise_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 (i8*)*, i64 (i8*)*, i32 (i8*, i32, i32)* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i64, i64*, i64* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i8*, i8**, i8*** }

@MD3_IDENT = common dso_local global i64 0, align 8
@MD3_VERSION = common dso_local global i64 0, align 8
@MAX_QPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmlab_serialise_model(%struct.TYPE_17__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %7, align 8
  %23 = load i64, i64* @MD3_IDENT, align 8
  %24 = call i32 @LittleLong(i64 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* @MD3_VERSION, align 8
  %28 = call i32 @LittleLong(i64 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @MAX_QPATH, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %33(i8* %34, i32 %35, i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 11
  store i64 0, i64* %41, align 8
  %42 = call i32 @LittleLong(i64 1)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64 (i8*)*, i64 (i8*)** %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 %47(i8* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @LittleLong(i64 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i64 (i8*)*, i64 (i8*)** %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 %56(i8* %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @LittleLong(i64 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 10
  store i64 0, i64* %64, align 8
  store i64 56, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @LittleLong(i64 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 32
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @LittleLong(i64 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %8, align 8
  %77 = mul i64 %76, 4
  %78 = add i64 %75, %77
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @LittleLong(i64 %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr i8, i8* %83, i64 %84
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %13, align 8
  store i64 0, i64* %14, align 8
  br label %87

87:                                               ; preds = %99, %3
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i64, i64* %14, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = call i32 @SerialiseTag(i64 %92, %struct.TYPE_17__* %93, i8* %94, i32* %97)
  br label %99

99:                                               ; preds = %91
  %100 = load i64, i64* %14, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %14, align 8
  br label %87

102:                                              ; preds = %87
  %103 = call i32 @AABBClear(%struct.TYPE_16__* %15)
  %104 = load i8*, i8** %6, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = bitcast i8* %106 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %16, align 8
  store i64 0, i64* %17, align 8
  br label %108

108:                                              ; preds = %127, %102
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %108
  %113 = load i64, i64* %17, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %117 = call i32 @SerialiseSurface(i64 %113, %struct.TYPE_17__* %114, i8* %115, %struct.TYPE_13__* %116, %struct.TYPE_16__* %15)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %119 = bitcast %struct.TYPE_13__* %118 to i32*
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @LittleLong(i64 %122)
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = bitcast i32* %125 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %126, %struct.TYPE_13__** %16, align 8
  br label %127

127:                                              ; preds = %112
  %128 = load i64, i64* %17, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %17, align 8
  br label %108

130:                                              ; preds = %108
  %131 = call i32 @AABBUpdateRadius(%struct.TYPE_16__* %15)
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr i8, i8* %132, i64 %133
  %135 = bitcast i8* %134 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %18, align 8
  store i64 0, i64* %19, align 8
  br label %136

136:                                              ; preds = %189, %130
  %137 = load i64, i64* %19, align 8
  %138 = icmp ult i64 %137, 3
  br i1 %138, label %139, label %192

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* %19, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* %19, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %144, %149
  %151 = call i8* @LittleFloat(i64 %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  %154 = load i8***, i8**** %153, align 8
  %155 = getelementptr inbounds i8**, i8*** %154, i64 0
  %156 = load i8**, i8*** %155, align 8
  %157 = load i64, i64* %19, align 8
  %158 = getelementptr inbounds i8*, i8** %156, i64 %157
  store i8* %151, i8** %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* %19, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* %19, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %163, %168
  %170 = call i8* @LittleFloat(i64 %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  %173 = load i8***, i8**** %172, align 8
  %174 = getelementptr inbounds i8**, i8*** %173, i64 1
  %175 = load i8**, i8*** %174, align 8
  %176 = load i64, i64* %19, align 8
  %177 = getelementptr inbounds i8*, i8** %175, i64 %176
  store i8* %170, i8** %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %179 = load i64*, i64** %178, align 8
  %180 = load i64, i64* %19, align 8
  %181 = getelementptr inbounds i64, i64* %179, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @LittleFloat(i64 %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i8**, i8*** %185, align 8
  %187 = load i64, i64* %19, align 8
  %188 = getelementptr inbounds i8*, i8** %186, i64 %187
  store i8* %183, i8** %188, align 8
  br label %189

189:                                              ; preds = %139
  %190 = load i64, i64* %19, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %19, align 8
  br label %136

192:                                              ; preds = %136
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i8* @LittleFloat(i64 %194)
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @Q_strncpyz(i32 %200, i32 %203, i32 4)
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %206 = bitcast %struct.TYPE_13__* %205 to i32*
  %207 = load i8*, i8** %6, align 8
  %208 = bitcast i8* %207 to i32*
  %209 = ptrtoint i32* %206 to i64
  %210 = ptrtoint i32* %208 to i64
  %211 = sub i64 %209, %210
  %212 = sdiv exact i64 %211, 4
  store i64 %212, i64* %20, align 8
  %213 = load i64, i64* %20, align 8
  %214 = call i32 @LittleLong(i64 %213)
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 8
  store i32 %214, i32* %216, align 8
  ret void
}

declare dso_local i32 @LittleLong(i64) #1

declare dso_local i32 @SerialiseTag(i64, %struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i32 @AABBClear(%struct.TYPE_16__*) #1

declare dso_local i32 @SerialiseSurface(i64, %struct.TYPE_17__*, i8*, %struct.TYPE_13__*, %struct.TYPE_16__*) #1

declare dso_local i32 @AABBUpdateRadius(%struct.TYPE_16__*) #1

declare dso_local i8* @LittleFloat(i64) #1

declare dso_local i32 @Q_strncpyz(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
