; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_knet_open.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_knet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[kftp_open] only mode \22r\22 is supported.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ftp://\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@KNF_TYPE_LOCAL = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @knet_open(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 114
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %86

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.TYPE_9__* @kftp_parse_url(i8* %22, i8* %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = icmp eq %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %86

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = call i32 @kftp_connect(%struct.TYPE_9__* %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = call i32 @knet_close(%struct.TYPE_9__* %33)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %86

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = call i32 @kftp_connect_file(%struct.TYPE_9__* %36)
  br label %73

38:                                               ; preds = %16
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @strstr(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8*, i8** %4, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call %struct.TYPE_9__* @khttp_parse_url(i8* %44, i8* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %6, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %86

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = call i32 @khttp_connect_file(%struct.TYPE_9__* %51)
  br label %72

53:                                               ; preds = %38
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @O_RDONLY, align 4
  %56 = call i32 @open(i8* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %86

61:                                               ; preds = %53
  %62 = call i64 @calloc(i32 1, i32 12)
  %63 = inttoptr i64 %62 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %6, align 8
  %64 = load i32, i32* @KNF_TYPE_LOCAL, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 -1, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %50
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = call i32 @knet_close(%struct.TYPE_9__* %82)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %86

84:                                               ; preds = %76, %73
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %3, align 8
  br label %86

86:                                               ; preds = %84, %81, %59, %49, %32, %27, %13
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %87
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @kftp_parse_url(i8*, i8*) #1

declare dso_local i32 @kftp_connect(%struct.TYPE_9__*) #1

declare dso_local i32 @knet_close(%struct.TYPE_9__*) #1

declare dso_local i32 @kftp_connect_file(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @khttp_parse_url(i8*, i8*) #1

declare dso_local i32 @khttp_connect_file(%struct.TYPE_9__*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
