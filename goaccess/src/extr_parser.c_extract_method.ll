; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_extract_method.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_extract_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"PATCH\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"PROPFIND\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"PROPPATCH\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"MKCOL\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"VERSION-CONTROL\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"CHECKOUT\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"CHECKIN\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"UNCHECKOUT\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"MKWORKSPACE\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"MERGE\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"BASELINE-CONTROL\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"MKACTIVITY\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"ORDERPATCH\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"propfind\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"propwatch\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"mkcol\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"version-control\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"checkin\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"uncheckout\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"mkworkspace\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"baseline-control\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"mkactivity\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"orderpatch\00", align 1
@__const.extract_method.methods = private unnamed_addr constant [56 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0)], align 16
@extract_method.list_length = internal global <{ i32, [55 x i32] }> <{ i32 -1, [55 x i32] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @extract_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extract_method(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [56 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = bitcast [56 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([56 x i8*]* @__const.extract_method.methods to i8*), i64 448, i1 false)
  store i32 56, i32* %5, align 4
  %8 = load i32, i32* getelementptr inbounds ([56 x i32], [56 x i32]* bitcast (<{ i32, [55 x i32] }>* @extract_method.list_length to [56 x i32]*), i64 0, i64 0), align 16
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %23, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 56
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [56 x i8*], [56 x i8*]* %4, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [56 x i32], [56 x i32]* bitcast (<{ i32, [55 x i32] }>* @extract_method.list_length to [56 x i32]*), i64 0, i64 %21
  store i32 %19, i32* %22, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %11

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26, %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 56
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [56 x i8*], [56 x i8*]* %4, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [56 x i32], [56 x i32]* bitcast (<{ i32, [55 x i32] }>* @extract_method.list_length to [56 x i32]*), i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strncmp(i8* %32, i8* %36, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [56 x i8*], [56 x i8*]* %4, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %2, align 8
  br label %53

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %28

52:                                               ; preds = %28
  store i8* null, i8** %2, align 8
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
