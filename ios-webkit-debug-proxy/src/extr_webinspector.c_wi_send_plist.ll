; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_webinspector.c_wi_send_plist.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_webinspector.c_wi_send_plist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i8*, i64)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@WI_ERROR = common dso_local global i64 0, align 8
@MAX_RPC_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"WIRPartialMessageKey\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"WIRFinalMessageKey\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wi.send_packet\00", align 1
@WI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wi_send_plist(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @plist_to_bin(i32* %22, i8** %6, i64* %7)
  %24 = load i64, i64* @WI_ERROR, align 8
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %141, %2
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %11, align 8
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %12, align 8
  store i8* null, i8** %6, align 8
  br label %70

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64, i64* @MAX_RPC_LEN, align 8
  %38 = icmp sgt i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = call i32* (...) @plist_new_dict()
  store i32* %40, i32** %13, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i64, i64* @MAX_RPC_LEN, align 8
  br label %52

48:                                               ; preds = %33
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %49, %50
  br label %52

52:                                               ; preds = %48, %46
  %53 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %54 = call i32* @plist_new_data(i8* %43, i64 %53)
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @plist_dict_set_item(i32* %55, i8* %59, i32* %60)
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @plist_to_bin(i32* %62, i8** %11, i64* %12)
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @plist_free(i32* %64)
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %52
  br label %145

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %30
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %71, 4
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = mul i64 %73, 1
  %75 = call i64 @malloc(i64 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %16, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %79
  br label %145

88:                                               ; preds = %70
  %89 = load i8*, i8** %16, align 8
  store i8* %89, i8** %17, align 8
  %90 = load i64, i64* %12, align 8
  %91 = ashr i64 %90, 24
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i8
  %94 = load i8*, i8** %17, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %17, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i64, i64* %12, align 8
  %97 = ashr i64 %96, 16
  %98 = and i64 %97, 255
  %99 = trunc i64 %98 to i8
  %100 = load i8*, i8** %17, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %17, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i64, i64* %12, align 8
  %103 = ashr i64 %102, 8
  %104 = and i64 %103, 255
  %105 = trunc i64 %104 to i8
  %106 = load i8*, i8** %17, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %17, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i64, i64* %12, align 8
  %109 = and i64 %108, 255
  %110 = trunc i64 %109 to i8
  %111 = load i8*, i8** %17, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %17, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i8*, i8** %17, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @memcpy(i8* %113, i8* %114, i64 %115)
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @wi_on_debug(%struct.TYPE_6__* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %120, i64 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64 (%struct.TYPE_6__*, i8*, i64)*, i64 (%struct.TYPE_6__*, i8*, i64)** %124, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i64 %125(%struct.TYPE_6__* %126, i8* %127, i64 %128)
  store i64 %129, i64* %18, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i64, i64* %18, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %88
  br label %145

135:                                              ; preds = %88
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load i64, i64* @WI_SUCCESS, align 8
  store i64 %139, i64* %8, align 8
  br label %145

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* @MAX_RPC_LEN, align 8
  %143 = load i64, i64* %9, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %9, align 8
  br label %25

145:                                              ; preds = %138, %134, %87, %68
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i64, i64* %8, align 8
  ret i64 %148
}

declare dso_local i32 @plist_to_bin(i32*, i8**, i64*) #1

declare dso_local i32* @plist_new_dict(...) #1

declare dso_local i32* @plist_new_data(i8*, i64) #1

declare dso_local i32 @plist_dict_set_item(i32*, i8*, i32*) #1

declare dso_local i32 @plist_free(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @wi_on_debug(%struct.TYPE_6__*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
