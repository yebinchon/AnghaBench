; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_s3_parse.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_s3_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.tm = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"s3://\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c".s3.amazonaws.com\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%a, %d %b %Y %H:%M:%S +0000\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"GET\0A\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Authorization: AWS \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3_parse(%struct.TYPE_5__* noalias sret %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [64 x i8], align 16
  %16 = alloca [29 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.tm, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* %4, i8** %9, align 8
  store i8* null, i8** %14, align 8
  %20 = bitcast %struct.TYPE_5__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 20, i1 false)
  %21 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strstr(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %143

27:                                               ; preds = %5
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 5
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  store i8* %30, i8** %13, align 8
  br label %31

31:                                               ; preds = %44, %27
  %32 = load i8*, i8** %13, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %13, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %13, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %13, align 8
  br label %31

47:                                               ; preds = %41
  %48 = load i8*, i8** %13, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %143

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %56, %53
  %60 = load i8*, i8** %9, align 8
  %61 = call i8* @s3_read_awssecret(i8* %60)
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %143

65:                                               ; preds = %59
  %66 = load i8*, i8** %14, align 8
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %11, align 8
  br label %76

73:                                               ; preds = %56
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %8, align 8
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %73, %65
  %77 = call i32 @kputsn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8, %struct.TYPE_6__* %19)
  %78 = load i8*, i8** %12, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @kputsn(i8* %78, i32 %84, %struct.TYPE_6__* %19)
  %86 = call i32 @kputsn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 17, %struct.TYPE_6__* %19)
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = call i32 @kputsn(i8* %87, i32 %89, %struct.TYPE_6__* %19)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = call i32 @time(i32 0)
  store i32 %97, i32* %17, align 4
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %99 = call i32 @gmtime_r(i32* %17, %struct.tm* %18)
  %100 = call i32 @strftime(i8* %98, i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = call i32 @kputsn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6, %struct.TYPE_6__* %19)
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %104 = call i32 @strlen(i8* %103)
  %105 = call i32 @kputsn(i8* %102, i32 %104, %struct.TYPE_6__* %19)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = call i32 @kputsn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6, %struct.TYPE_6__* %19)
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %115 = call i32 @strlen(i8* %114)
  %116 = call i32 @kputsn(i8* %113, i32 %115, %struct.TYPE_6__* %19)
  %117 = call i32 @kputsn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1, %struct.TYPE_6__* %19)
  %118 = load i8*, i8** %12, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = load i8*, i8** %12, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 -1
  %122 = call i32 @strlen(i8* %121)
  %123 = call i32 @kputsn(i8* %119, i32 %122, %struct.TYPE_6__* %19)
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds [29 x i8], [29 x i8]* %16, i64 0, i64 0
  %128 = call i32 @s3_sign(i8* %124, i32 %126, i8* %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = call i32 @kputsn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 19, %struct.TYPE_6__* %19)
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = call i32 @kputsn(i8* %131, i32 %133, %struct.TYPE_6__* %19)
  %135 = call i32 @kputsn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1, %struct.TYPE_6__* %19)
  %136 = getelementptr inbounds [29 x i8], [29 x i8]* %16, i64 0, i64 0
  %137 = getelementptr inbounds [29 x i8], [29 x i8]* %16, i64 0, i64 0
  %138 = call i32 @strlen(i8* %137)
  %139 = call i32 @kputsn(i8* %136, i32 %138, %struct.TYPE_6__* %19)
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %76, %64, %52, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @s3_read_awssecret(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @kputsn(i8*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @time(i32) #2

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #2

declare dso_local i32 @s3_sign(i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
