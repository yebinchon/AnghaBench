; ModuleID = '/home/carl/AnghaBench/git/extr_server-info.c_read_pack_info_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_server-info.c_read_pack_info_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"P \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"unrecognized: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_pack_info_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pack_info_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @fopen_or_warn(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %61, %25, %15
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @strbuf_getline(%struct.strbuf* %5, i32* %17)
  %19 = load i64, i64* @EOF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %16

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @skip_prefix(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = call i64 @parse_pack_def(i8* %32, i32 %33)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %63

38:                                               ; preds = %31
  br label %61

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 68
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %63

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 84
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %63

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %38
  br label %16

62:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %54, %46, %37
  %64 = call i32 @strbuf_release(%struct.strbuf* %5)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen_or_warn(i8*, i8*) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i64 @parse_pack_def(i8*, i32) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
