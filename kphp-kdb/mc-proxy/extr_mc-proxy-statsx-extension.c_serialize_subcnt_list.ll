; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_serialize_subcnt_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_serialize_subcnt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsx_gather_extra = type { i32*, i32 }

@MAX_SUBCOUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"s:5:\22extra\22;a:0:{}\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"s:5:\22extra\22;a:%d:{\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"i:%d;i:%d;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.statsx_gather_extra*)* @serialize_subcnt_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serialize_subcnt_list(i8* %0, %struct.statsx_gather_extra* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.statsx_gather_extra*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.statsx_gather_extra* %1, %struct.statsx_gather_extra** %5, align 8
  %8 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %9 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @MAX_SUBCOUNTER, align 4
  %12 = call i32 @not_null(i32* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %3, align 8
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %19 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1296637200
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %3, align 8
  br label %71

29:                                               ; preds = %17
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %64, %29
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MAX_SUBCOUNTER, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %42 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %40
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %53 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %49, %40
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %36

67:                                               ; preds = %36
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %4, align 8
  store i8 125, i8* %68, align 1
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %67, %22, %15
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i32 @not_null(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
