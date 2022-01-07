; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-crypto.c_dl_crypto_decode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-crypto.c_dl_crypto_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@N = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dl_crypto_decode(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @encode_str(i8* %17, i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @apply_perm_rev(i8* %20, i32 %23, i32 %24)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %55, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %36, %37
  %39 = load i8, i8* @N, align 1
  %40 = sext i8 %39 to i32
  %41 = urem i32 %38, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %26

58:                                               ; preds = %26
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @apply_perm_rev(i8* %59, i32 %62, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %87, %58
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = mul i32 %75, %78
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = add i32 %79, %85
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %68

90:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %136, %90
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %139

97:                                               ; preds = %91
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %98, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @N, align 1
  %109 = sext i8 %108 to i32
  %110 = add nsw i32 %107, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i8, i8* @N, align 1
  %113 = sext i8 %112 to i32
  %114 = urem i32 %111, %113
  %115 = add i32 %110, %114
  %116 = load i8, i8* @N, align 1
  %117 = sext i8 %116 to i32
  %118 = urem i32 %115, %117
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 %119, i8* %123, align 1
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = mul i32 %124, %127
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = add i32 %128, %134
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %97
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %91

139:                                              ; preds = %91
  %140 = load i8*, i8** %6, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @apply_perm_rev(i8* %140, i32 %143, i32 %146)
  %148 = load i8*, i8** %6, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @decode_str(i8* %148, i32 %151)
  ret void
}

declare dso_local i32 @encode_str(i8*, i32) #1

declare dso_local i32 @apply_perm_rev(i8*, i32, i32) #1

declare dso_local i32 @decode_str(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
