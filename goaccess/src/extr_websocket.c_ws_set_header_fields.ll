; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_set_header_fields.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_set_header_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"get \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @ws_set_header_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_set_header_fields(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  store i32 1, i32* %3, align 4
  br label %95

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strstr(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27, %23
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @ws_parse_request(i8* %32, i8** %7, i8** %8)
  store i8* %33, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %95

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  store i32 0, i32* %3, align 4
  br label %95

46:                                               ; preds = %27
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 58)
  store i8* %48, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %95

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %10, align 8
  br label %54

54:                                               ; preds = %66, %51
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @isspace(i8 zeroext %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %58, %54
  %65 = phi i1 [ false, %54 ], [ %63, %58 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %9, align 8
  br label %54

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %95

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %4, align 8
  %77 = call i32* @strpbrk(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  store i8 32, i8* %80, align 1
  store i32 1, i32* %3, align 4
  br label %95

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %87, %81
  %83 = load i8*, i8** %10, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isspace(i8 zeroext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  br label %82

90:                                               ; preds = %82
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @ws_set_header_key_value(%struct.TYPE_4__* %91, i8* %92, i8* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %79, %73, %50, %36, %35, %22
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @ws_parse_request(i8*, i8**, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32* @strpbrk(i8*, i8*) #1

declare dso_local i32 @ws_set_header_key_value(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
