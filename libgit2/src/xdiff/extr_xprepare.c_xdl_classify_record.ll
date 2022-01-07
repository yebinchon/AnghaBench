; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xprepare.c_xdl_classify_record.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xprepare.c_xdl_classify_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__**, %struct.TYPE_11__**, i32, i32 }
%struct.TYPE_11__ = type { i64, i8*, i64, i64, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i8*, i64, %struct.TYPE_9__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*, %struct.TYPE_9__**, i32, %struct.TYPE_9__*)* @xdl_classify_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_classify_record(i32 %0, %struct.TYPE_10__* %1, %struct.TYPE_9__** %2, i32 %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__**, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @XDL_HASHLONG(i64 %21, i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %14, align 8
  br label %32

32:                                               ; preds = %63, %5
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @xdl_recmatch(i8* %46, i32 %49, i8* %52, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %67

62:                                               ; preds = %43, %35
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %14, align 8
  br label %32

67:                                               ; preds = %61, %32
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %153, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  %73 = call %struct.TYPE_11__* @xdl_cha_alloc(i32* %72)
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %14, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 -1, i32* %6, align 4
  br label %188

76:                                               ; preds = %70
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = sext i32 %79 to i64
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %76
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %94, 2
  store i32 %95, i32* %93, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i64 @xdl_realloc(%struct.TYPE_11__** %98, i32 %104)
  %106 = inttoptr i64 %105 to %struct.TYPE_11__**
  store %struct.TYPE_11__** %106, %struct.TYPE_11__*** %15, align 8
  %107 = icmp ne %struct.TYPE_11__** %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %91
  store i32 -1, i32* %6, align 4
  br label %188

109:                                              ; preds = %91
  %110 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 4
  store %struct.TYPE_11__** %110, %struct.TYPE_11__*** %112, align 8
  br label %113

113:                                              ; preds = %109, %76
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %117, i64 %120
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %121, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %141, i64 %142
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %146, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %149, align 8
  %151 = load i64, i64* %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %150, i64 %151
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %152, align 8
  br label %153

153:                                              ; preds = %113, %67
  %154 = load i32, i32* %7, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  br label %166

161:                                              ; preds = %153
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %161, %156
  %167 = phi i64 [ %159, %156 ], [ %164, %161 ]
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i64 @XDL_HASHLONG(i64 %175, i32 %176)
  store i64 %177, i64* %12, align 8
  %178 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %178, i64 %179
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %183, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %185 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %186 = load i64, i64* %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %185, i64 %186
  store %struct.TYPE_9__* %184, %struct.TYPE_9__** %187, align 8
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %166, %108, %75
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i64 @XDL_HASHLONG(i64, i32) #1

declare dso_local i64 @xdl_recmatch(i8*, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @xdl_cha_alloc(i32*) #1

declare dso_local i64 @xdl_realloc(%struct.TYPE_11__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
