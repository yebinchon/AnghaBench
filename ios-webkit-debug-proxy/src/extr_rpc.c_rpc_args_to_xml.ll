; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_args_to_xml.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_args_to_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*)* }

@RPC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"plist_to_xml failed\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<plist\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"</plist>\00", align 1
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_args_to_xml(%struct.TYPE_4__* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @RPC_ERROR, align 4
  store i32 %20, i32* %5, align 4
  br label %140

21:                                               ; preds = %16
  %22 = load i8**, i8*** %8, align 8
  store i8* null, i8** %22, align 8
  store i32 0, i32* %10, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = load i8**, i8*** %8, align 8
  %26 = call i32 @plist_to_xml(i32 %24, i8** %25, i32* %10)
  %27 = load i8**, i8*** %8, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = call i32 %36(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  br label %140

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %138

42:                                               ; preds = %39
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strstr(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %11, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 62)
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i8* [ %50, %48 ], [ null, %51 ]
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %137

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %63, %56
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %57

64:                                               ; preds = %57
  %65 = load i8**, i8*** %8, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %12, align 8
  br label %70

70:                                               ; preds = %87, %64
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ugt i8* %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i8*, i8** %12, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8*, i8** %12, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 10
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i1 [ true, %74 ], [ %82, %78 ]
  br label %85

85:                                               ; preds = %83, %70
  %86 = phi i1 [ false, %70 ], [ %84, %83 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %12, align 8
  br label %70

90:                                               ; preds = %85
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = icmp sge i64 %95, 8
  br i1 %96, label %97, label %136

97:                                               ; preds = %90
  %98 = load i8*, i8** %12, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 -7
  %100 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %136, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 -8
  store i8* %104, i8** %12, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = add nsw i64 %109, 1
  %111 = mul i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i64 @malloc(i32 %112)
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %13, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @strncpy(i8* %115, i8* %116, i32 %122)
  %124 = load i8*, i8** %13, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = getelementptr inbounds i8, i8* %124, i64 %129
  store i8 0, i8* %130, align 1
  %131 = load i8**, i8*** %8, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %13, align 8
  %135 = load i8**, i8*** %8, align 8
  store i8* %134, i8** %135, align 8
  br label %136

136:                                              ; preds = %102, %97, %90
  br label %137

137:                                              ; preds = %136, %52
  br label %138

138:                                              ; preds = %137, %39
  %139 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %33, %19
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @plist_to_xml(i32, i8**, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
