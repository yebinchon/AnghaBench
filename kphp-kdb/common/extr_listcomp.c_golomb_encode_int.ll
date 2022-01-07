; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_golomb_encode_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_golomb_encode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_encoder = type { i32, i32, i32, i32, %struct.bitwriter }
%struct.bitwriter = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_encoder*, i32)* @golomb_encode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @golomb_encode_int(%struct.list_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.list_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitwriter*, align 8
  %6 = alloca i32, align 4
  store %struct.list_encoder* %0, %struct.list_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %7, i32 0, i32 4
  store %struct.bitwriter* %8, %struct.bitwriter** %5, align 8
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %53, %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %27 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %32 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %37 = call i32 @bwrite_append(%struct.bitwriter* %36, i32 128)
  %38 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %39 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %38, i32 0, i32 0
  store i32 64, i32* %39, align 8
  br label %53

40:                                               ; preds = %30
  %41 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %42 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %45 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %50 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %40, %35
  %54 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %55 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %24

59:                                               ; preds = %24
  %60 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %61 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %66 = call i32 @bwrite_append(%struct.bitwriter* %65, i32 0)
  %67 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %68 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %67, i32 0, i32 0
  store i32 64, i32* %68, align 8
  br label %74

69:                                               ; preds = %59
  %70 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %71 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %77 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = mul nsw i32 4, %81
  %83 = add nsw i32 %82, 2
  %84 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %85 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %83, %86
  store i32 %87, i32* %4, align 4
  br label %100

88:                                               ; preds = %74
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %91 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %89, %92
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 %94, 1
  %96 = load %struct.list_encoder*, %struct.list_encoder** %3, align 8
  %97 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %95, %98
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %88, %80
  br label %101

101:                                              ; preds = %126, %100
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, -2147483648
  br i1 %103, label %104, label %133

104:                                              ; preds = %101
  %105 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %106 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %111 = call i32 @bwrite_append(%struct.bitwriter* %110, i32 0)
  %112 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %113 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %112, i32 0, i32 0
  store i32 128, i32* %113, align 8
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %119 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %122 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %120
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %117, %114
  %127 = load i32, i32* %4, align 4
  %128 = shl i32 %127, 1
  store i32 %128, i32* %4, align 4
  %129 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %130 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = ashr i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %101

133:                                              ; preds = %101
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bwrite_append(%struct.bitwriter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
