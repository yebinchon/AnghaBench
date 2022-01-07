; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_get_db_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_get_db_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_table = type { i8*, i32 }

@HASH_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.db_table* @get_db_hash(%struct.db_table* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.db_table*, align 8
  %6 = alloca %struct.db_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.db_table* %0, %struct.db_table** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %57, %4
  %20 = load i32, i32* %12, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %12, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sge i32 %26, 65
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 90
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, 32
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  br label %39

39:                                               ; preds = %33, %28, %23
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %40, 239
  %42 = load i8*, i8** %13, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* @HASH_PRIME, align 4
  %47 = srem i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %48, 17
  %50 = load i8*, i8** %13, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* @HASH_PRIME, align 4
  %55 = sub nsw i32 %54, 1
  %56 = srem i32 %53, %55
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %39
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %13, align 8
  br label %19

60:                                               ; preds = %19
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %107, %60
  %64 = load %struct.db_table*, %struct.db_table** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.db_table, %struct.db_table* %64, i64 %66
  %68 = getelementptr inbounds %struct.db_table, %struct.db_table* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %108

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.db_table*, %struct.db_table** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.db_table, %struct.db_table* %73, i64 %75
  %77 = getelementptr inbounds %struct.db_table, %struct.db_table* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %72, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %71
  %81 = load %struct.db_table*, %struct.db_table** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.db_table, %struct.db_table* %81, i64 %83
  %85 = getelementptr inbounds %struct.db_table, %struct.db_table* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @memcmp(i8* %86, i8* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %80
  %92 = load %struct.db_table*, %struct.db_table** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.db_table, %struct.db_table* %92, i64 %94
  store %struct.db_table* %95, %struct.db_table** %5, align 8
  br label %140

96:                                               ; preds = %80, %71
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @HASH_PRIME, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @HASH_PRIME, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %96
  br label %63

108:                                              ; preds = %63
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i8* @zmalloc(i32 %113)
  store i8* %114, i8** %14, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @memcpy(i8* %115, i8* %116, i32 %117)
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %14, align 8
  %124 = load %struct.db_table*, %struct.db_table** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.db_table, %struct.db_table* %124, i64 %126
  %128 = getelementptr inbounds %struct.db_table, %struct.db_table* %127, i32 0, i32 0
  store i8* %123, i8** %128, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.db_table*, %struct.db_table** %6, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.db_table, %struct.db_table* %130, i64 %132
  %134 = getelementptr inbounds %struct.db_table, %struct.db_table* %133, i32 0, i32 1
  store i32 %129, i32* %134, align 8
  %135 = load %struct.db_table*, %struct.db_table** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.db_table, %struct.db_table* %135, i64 %137
  store %struct.db_table* %138, %struct.db_table** %5, align 8
  br label %140

139:                                              ; preds = %108
  store %struct.db_table* null, %struct.db_table** %5, align 8
  br label %140

140:                                              ; preds = %139, %111, %91
  %141 = load %struct.db_table*, %struct.db_table** %5, align 8
  ret %struct.db_table* %141
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
