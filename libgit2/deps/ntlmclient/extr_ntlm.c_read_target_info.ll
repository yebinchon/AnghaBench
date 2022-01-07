; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_read_target_info.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_read_target_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"truncated target info block\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid target info block\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unknown target info block type\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"invalid extra data in target info section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i8**, i8**, i32*, %struct.TYPE_5__*, i32)* @read_target_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_target_info(i8** %0, i8** %1, i8** %2, i8** %3, i32* %4, %struct.TYPE_5__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %19 = load i8**, i8*** %9, align 8
  store i8* null, i8** %19, align 8
  %20 = load i8**, i8*** %10, align 8
  store i8* null, i8** %20, align 8
  %21 = load i8**, i8*** %11, align 8
  store i8* null, i8** %21, align 8
  %22 = load i8**, i8*** %12, align 8
  store i8* null, i8** %22, align 8
  br label %23

23:                                               ; preds = %105, %7
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = icmp sge i32 %33, 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = phi i1 [ false, %23 ], [ %34, %26 ]
  br i1 %36, label %37, label %106

37:                                               ; preds = %35
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %40 = call i32 @read_int16(i32* %16, i32* %38, %struct.TYPE_5__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32*, i32** %13, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %45 = call i32 @read_int16(i32* %17, i32* %43, %struct.TYPE_5__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %37
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @ntlm_client_set_errmsg(i32* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %118

50:                                               ; preds = %42
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @ntlm_client_set_errmsg(i32* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %118

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %16, align 4
  switch i32 %60, label %102 [
    i32 132, label %61
    i32 129, label %71
    i32 131, label %81
    i32 128, label %91
    i32 130, label %101
  ]

61:                                               ; preds = %59
  %62 = load i8**, i8*** %10, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @read_string(i8** %62, i32* %63, %struct.TYPE_5__* %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  store i32 -1, i32* %8, align 4
  br label %118

70:                                               ; preds = %61
  br label %105

71:                                               ; preds = %59
  %72 = load i8**, i8*** %9, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @read_string(i8** %72, i32* %73, %struct.TYPE_5__* %74, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i32 -1, i32* %8, align 4
  br label %118

80:                                               ; preds = %71
  br label %105

81:                                               ; preds = %59
  %82 = load i8**, i8*** %12, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @read_string(i8** %82, i32* %83, %struct.TYPE_5__* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  store i32 -1, i32* %8, align 4
  br label %118

90:                                               ; preds = %81
  br label %105

91:                                               ; preds = %59
  %92 = load i8**, i8*** %11, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @read_string(i8** %92, i32* %93, %struct.TYPE_5__* %94, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  store i32 -1, i32* %8, align 4
  br label %118

100:                                              ; preds = %91
  br label %105

101:                                              ; preds = %59
  store i32 1, i32* %18, align 4
  br label %105

102:                                              ; preds = %59
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @ntlm_client_set_errmsg(i32* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %118

105:                                              ; preds = %101, %100, %90, %80, %70
  br label %23

106:                                              ; preds = %35
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @ntlm_client_set_errmsg(i32* %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %118

117:                                              ; preds = %106
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %114, %102, %99, %89, %79, %69, %56, %47
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @read_int16(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ntlm_client_set_errmsg(i32*, i8*) #1

declare dso_local i32 @read_string(i8**, i32*, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
