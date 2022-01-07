; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_perm_move.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_perm_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_perm_move(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32*], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 0, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %179

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 0, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %21
  store i32 -1, i32* %4, align 4
  br label %179

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %179

36:                                               ; preds = %31
  %37 = bitcast [10 x i32*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 80, i1 false)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 5
  %42 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 8
  %43 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 6
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dl_prm_extract(i32* %40, i32** %41, i32** %42, i32** %43, i32 %44)
  %46 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 5
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @LEN(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 6
  %52 = load i32*, i32** %51, align 16
  %53 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 6
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = call i32 @dl_prm_split_node(i32* %52, i32** %53, i32** %9, i32 %54, i32* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 7
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = call i32 @dl_prm_split_node(i32* %58, i32** %9, i32** %59, i32 1, i32* %61)
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %145, %36
  %64 = load i32, i32* %10, align 4
  %65 = icmp sle i32 %64, 3
  br i1 %65, label %66, label %148

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 5
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @LEN(i32* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %128

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %91
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @dl_prm_extract(i32* %81, i32** %84, i32** %88, i32** %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 5
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %97
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @LEN(i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %117
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = call i32 @dl_prm_split_node(i32* %110, i32** %114, i32** %118, i32 %119, i32* %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %126
  store i32* %123, i32** %127, align 8
  store i32* null, i32** %9, align 8
  br label %148

128:                                              ; preds = %66
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 5
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %138
  store i32* %136, i32** %139, align 8
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 5
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %142
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %63

148:                                              ; preds = %76, %63
  %149 = load i32*, i32** %9, align 8
  %150 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 9
  store i32* %149, i32** %150, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %171, %148
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 9
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %157
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = call i32 @dl_prm_merge(i32** %158, i32* %162, i32* %167, i32* %169)
  br label %171

171:                                              ; preds = %154
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %151

174:                                              ; preds = %151
  %175 = getelementptr inbounds [10 x i32*], [10 x i32*]* %8, i64 0, i64 9
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  store i32* %176, i32** %178, align 8
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %174, %35, %30, %20
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dl_prm_extract(i32*, i32**, i32**, i32**, i32) #2

declare dso_local i32 @LEN(i32*) #2

declare dso_local i32 @dl_prm_split_node(i32*, i32**, i32**, i32, i32*) #2

declare dso_local i32 @dl_prm_merge(i32**, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
