; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Callback_Code.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Callback_Code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@True = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@CODER_FINISH_END = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32*, i64, i32, i64*, i64*, i32*)* @XzDecMt_Callback_Code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XzDecMt_Callback_Code(i8* %0, i32 %1, i32* %2, i64 %3, i32 %4, i64* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %18, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %19, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %15, align 8
  store i64 %36, i64* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %16, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @True, align 4
  %43 = load i32*, i32** %17, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  store i64 %58, i64* %20, align 8
  %59 = load i64, i64* %13, align 8
  store i64 %59, i64* %21, align 8
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* %20, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i64, i64* %20, align 8
  store i64 %64, i64* %21, align 8
  br label %65

65:                                               ; preds = %63, %51
  %66 = load i64, i64* %21, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %66
  store i32* %68, i32** %12, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* %13, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %21, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %65
  %85 = load i32, i32* @False, align 4
  %86 = load i32*, i32** %17, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i64, i64* @SZ_OK, align 8
  store i64 %87, i64* %9, align 8
  br label %190

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = load i64, i64* @SZ_OK, align 8
  store i64 %96, i64* %9, align 8
  br label %190

97:                                               ; preds = %89
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* @SZ_OK, align 8
  store i64 %103, i64* %9, align 8
  br label %190

104:                                              ; preds = %97
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SZ_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %164

110:                                              ; preds = %104
  %111 = load i64, i64* %13, align 8
  store i64 %111, i64* %24, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %114, %118
  store i64 %119, i64* %25, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 6
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @CODER_FINISH_END, align 4
  %125 = call i64 @XzUnpacker_Code(%struct.TYPE_8__* %121, i32* null, i64* %25, i32* %122, i64* %24, i32 %123, i32 %124, i32* %22)
  store i64 %125, i64* %23, align 8
  %126 = load i64, i64* %23, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load i32, i32* %22, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* %24, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %15, align 8
  store i64 %145, i64* %146, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %16, align 8
  store i64 %149, i64* %150, align 8
  %151 = load i64, i64* %23, align 8
  %152 = load i64, i64* @SZ_OK, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %110
  %155 = load i64, i64* %24, align 8
  %156 = load i64, i64* %13, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* @False, align 4
  %160 = load i32*, i32** %17, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = load i64, i64* @SZ_OK, align 8
  store i64 %162, i64* %9, align 8
  br label %190

163:                                              ; preds = %110
  br label %164

164:                                              ; preds = %163, %104
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %164
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @SZ_ERROR_MEM, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %170
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %15, align 8
  store i64 %179, i64* %180, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %16, align 8
  store i64 %183, i64* %184, align 8
  %185 = load i64, i64* @S_OK, align 8
  store i64 %185, i64* %9, align 8
  br label %190

186:                                              ; preds = %170, %164
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %9, align 8
  br label %190

190:                                              ; preds = %186, %176, %161, %102, %95, %84
  %191 = load i64, i64* %9, align 8
  ret i64 %191
}

declare dso_local i64 @XzUnpacker_Code(%struct.TYPE_8__*, i32*, i64*, i32*, i64*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
