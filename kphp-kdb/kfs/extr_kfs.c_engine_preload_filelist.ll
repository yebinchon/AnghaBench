; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_engine_preload_filelist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_engine_preload_filelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@engine_replica_name = common dso_local global i64* null, align 8
@engine_snapshot_replica_name = common dso_local global i64* null, align 8
@engine_replica = common dso_local global i8* null, align 8
@engine_snapshot_replica = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @engine_preload_filelist(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcmp(i8* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @strncmp(i8* %26, i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31, %20, %16, %12, %2
  %39 = load i8*, i8** %4, align 8
  %40 = call i64* @strdup(i8* %39)
  store i64* %40, i64** @engine_replica_name, align 8
  store i64* %40, i64** @engine_snapshot_replica_name, align 8
  br label %107

41:                                               ; preds = %31, %25
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 4
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -4
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %46, %41
  %58 = load i8*, i8** %4, align 8
  %59 = call i64* @strdup(i8* %58)
  store i64* %59, i64** @engine_snapshot_replica_name, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %91

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  %70 = call i64* @malloc(i32 %69)
  store i64* %70, i64** @engine_replica_name, align 8
  %71 = load i64*, i64** @engine_replica_name, align 8
  %72 = ptrtoint i64* %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i64*, i64** @engine_replica_name, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @memcpy(i64* %74, i8* %75, i32 %76)
  %78 = load i64*, i64** @engine_replica_name, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @memcpy(i64* %81, i8* %82, i32 %83)
  %85 = load i64*, i64** @engine_replica_name, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %85, i64 %89
  store i64 0, i64* %90, align 8
  br label %106

91:                                               ; preds = %57
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i64* @malloc(i32 %93)
  store i64* %94, i64** @engine_replica_name, align 8
  %95 = load i64*, i64** @engine_replica_name, align 8
  %96 = ptrtoint i64* %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i64*, i64** @engine_replica_name, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @memcpy(i64* %98, i8* %99, i32 %100)
  %102 = load i64*, i64** @engine_replica_name, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %91, %65
  br label %107

107:                                              ; preds = %106, %38
  %108 = load i64*, i64** @engine_replica_name, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i64*, i64** @engine_snapshot_replica_name, align 8
  %112 = icmp ne i64* %111, null
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i1 [ false, %107 ], [ %112, %110 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i64*, i64** @engine_replica_name, align 8
  %118 = call i8* @open_replica(i64* %117, i32 0)
  store i8* %118, i8** @engine_replica, align 8
  %119 = load i8*, i8** @engine_replica, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %113
  store i32 -1, i32* %3, align 4
  br label %136

122:                                              ; preds = %113
  %123 = load i64*, i64** @engine_snapshot_replica_name, align 8
  %124 = load i64*, i64** @engine_replica_name, align 8
  %125 = icmp eq i64* %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i8*, i8** @engine_replica, align 8
  store i8* %127, i8** @engine_snapshot_replica, align 8
  br label %135

128:                                              ; preds = %122
  %129 = load i64*, i64** @engine_snapshot_replica_name, align 8
  %130 = call i8* @open_replica(i64* %129, i32 1)
  store i8* %130, i8** @engine_snapshot_replica, align 8
  %131 = load i8*, i8** @engine_snapshot_replica, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %136

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %126
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %133, %121
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64* @strdup(i8*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i8* @open_replica(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
