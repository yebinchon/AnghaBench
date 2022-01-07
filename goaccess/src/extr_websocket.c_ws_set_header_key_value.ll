; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_set_header_key_value.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_set_header_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Origin\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Sec-WebSocket-Protocol\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Sec-WebSocket-Key\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Sec-WebSocket-Version\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Referer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*)* @ws_set_header_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_set_header_key_value(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @xstrdup(i8* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 8
  store i8* %12, i8** %14, align 8
  br label %95

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @xstrdup(i8* %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  br label %94

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @xstrdup(i8* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  br label %93

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @xstrdup(i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  br label %92

42:                                               ; preds = %33
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @strcasecmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @xstrdup(i8* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  br label %91

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @strcasecmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @xstrdup(i8* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %90

60:                                               ; preds = %51
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @strcasecmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @xstrdup(i8* %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %89

69:                                               ; preds = %60
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strcasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @xstrdup(i8* %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %88

78:                                               ; preds = %69
  %79 = load i8*, i8** %5, align 8
  %80 = call i64 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @xstrdup(i8* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %82, %78
  br label %88

88:                                               ; preds = %87, %73
  br label %89

89:                                               ; preds = %88, %64
  br label %90

90:                                               ; preds = %89, %55
  br label %91

91:                                               ; preds = %90, %46
  br label %92

92:                                               ; preds = %91, %37
  br label %93

93:                                               ; preds = %92, %28
  br label %94

94:                                               ; preds = %93, %19
  br label %95

95:                                               ; preds = %94, %10
  ret void
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
