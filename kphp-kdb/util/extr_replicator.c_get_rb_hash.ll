; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_get_rb_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_get_rb_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_binlog = type { i32, i8*, i64, i64 }

@HASH_PRIME = common dso_local global i32 0, align 4
@rb_hash = common dso_local global %struct.remote_binlog** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.remote_binlog* @get_rb_hash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.remote_binlog*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %55, %3
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load i8*, i8** %11, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 65
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 90
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, 32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  br label %37

37:                                               ; preds = %31, %26, %21
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 239
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %39, %42
  %44 = load i32, i32* @HASH_PRIME, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 17
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %47, %50
  %52 = load i32, i32* @HASH_PRIME, align 4
  %53 = sub nsw i32 %52, 1
  %54 = srem i32 %51, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %37
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  br label %17

58:                                               ; preds = %17
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %107, %58
  %62 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %62, i64 %64
  %66 = load %struct.remote_binlog*, %struct.remote_binlog** %65, align 8
  %67 = icmp ne %struct.remote_binlog* %66, null
  br i1 %67, label %68, label %108

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %70, i64 %72
  %74 = load %struct.remote_binlog*, %struct.remote_binlog** %73, align 8
  %75 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %69, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %68
  %79 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %79, i64 %81
  %83 = load %struct.remote_binlog*, %struct.remote_binlog** %82, align 8
  %84 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @memcmp(i8* %85, i8* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %78
  %91 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %91, i64 %93
  %95 = load %struct.remote_binlog*, %struct.remote_binlog** %94, align 8
  store %struct.remote_binlog* %95, %struct.remote_binlog** %4, align 8
  br label %161

96:                                               ; preds = %78, %68
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @HASH_PRIME, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @HASH_PRIME, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %103, %96
  br label %61

108:                                              ; preds = %61
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %160

111:                                              ; preds = %108
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i8* @zmalloc(i32 %113)
  store i8* %114, i8** %12, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @memcpy(i8* %115, i8* %116, i32 %117)
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 0, i8* %122, align 1
  %123 = call i8* @zmalloc(i32 32)
  %124 = bitcast i8* %123 to %struct.remote_binlog*
  %125 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %125, i64 %127
  store %struct.remote_binlog* %124, %struct.remote_binlog** %128, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %130, i64 %132
  %134 = load %struct.remote_binlog*, %struct.remote_binlog** %133, align 8
  %135 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %134, i32 0, i32 1
  store i8* %129, i8** %135, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %137, i64 %139
  %141 = load %struct.remote_binlog*, %struct.remote_binlog** %140, align 8
  %142 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %141, i32 0, i32 0
  store i32 %136, i32* %142, align 8
  %143 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %143, i64 %145
  %147 = load %struct.remote_binlog*, %struct.remote_binlog** %146, align 8
  %148 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %147, i32 0, i32 3
  store i64 0, i64* %148, align 8
  %149 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %149, i64 %151
  %153 = load %struct.remote_binlog*, %struct.remote_binlog** %152, align 8
  %154 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %155, i64 %157
  %159 = load %struct.remote_binlog*, %struct.remote_binlog** %158, align 8
  store %struct.remote_binlog* %159, %struct.remote_binlog** %4, align 8
  br label %161

160:                                              ; preds = %108
  store %struct.remote_binlog* null, %struct.remote_binlog** %4, align 8
  br label %161

161:                                              ; preds = %160, %111, %90
  %162 = load %struct.remote_binlog*, %struct.remote_binlog** %4, align 8
  ret %struct.remote_binlog* %162
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
