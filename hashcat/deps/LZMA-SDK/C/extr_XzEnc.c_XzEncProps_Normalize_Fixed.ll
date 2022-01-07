; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_XzEncProps_Normalize_Fixed.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_XzEncProps_Normalize_Fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MTCODER__THREADS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @XzEncProps_Normalize_Fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XzEncProps_Normalize_Fixed(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %13 = bitcast %struct.TYPE_8__* %9 to i8*
  %14 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = call i32 @Lzma2EncProps_Normalize(%struct.TYPE_8__* %9)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %88

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %64
  br label %87

71:                                               ; preds = %53
  %72 = load i32, i32* %4, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %74
  br label %86

82:                                               ; preds = %71
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %81
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %7, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %3, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %113

105:                                              ; preds = %102, %88
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %102
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = call i32 @Lzma2EncProps_Normalize(%struct.TYPE_8__* %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %156

123:                                              ; preds = %113
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %156

126:                                              ; preds = %123
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = udiv i32 %127, %130
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = mul i32 %132, %135
  %137 = load i32, i32* %3, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %126
  %140 = load i32, i32* %10, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %139, %126
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 1, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %146
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %7, align 4
  %154 = mul nsw i32 %152, %153
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %151, %142
  br label %156

156:                                              ; preds = %155, %123, %113
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Lzma2EncProps_Normalize(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
