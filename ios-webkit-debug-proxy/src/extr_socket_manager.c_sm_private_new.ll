; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_private_new.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_private_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64, %struct.TYPE_6__, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i64 }

@SIZEOF_FD_SET = common dso_local global i32 0, align 4
@HT_INT_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @sm_private_new(i64 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i64 @malloc(i32 4)
  %6 = inttoptr i64 %5 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %163

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 4)
  %13 = load i32, i32* @SIZEOF_FD_SET, align 4
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 10
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* @SIZEOF_FD_SET, align 4
  %19 = call i64 @malloc(i32 %18)
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 9
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @SIZEOF_FD_SET, align 4
  %24 = call i64 @malloc(i32 %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 8
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* @SIZEOF_FD_SET, align 4
  %29 = call i64 @malloc(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 7
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* @SIZEOF_FD_SET, align 4
  %34 = call i64 @malloc(i32 %33)
  %35 = inttoptr i64 %34 to i32*
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @SIZEOF_FD_SET, align 4
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* @SIZEOF_FD_SET, align 4
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* @HT_INT_KEYS, align 4
  %49 = call i8* @ht_new(i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 13
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @HT_INT_KEYS, align 4
  %53 = call i8* @ht_new(i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 12
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @HT_INT_KEYS, align 4
  %57 = call i8* @ht_new(i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 11
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @calloc(i64 %60, i32 8)
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %119

69:                                               ; preds = %10
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 10
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %119

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %119

79:                                               ; preds = %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 8
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %119

84:                                               ; preds = %79
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %119

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %119

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 13
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 12
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 11
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %114, %109, %104, %99, %94, %89, %84, %79, %74, %69, %10
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = call i32 @sm_private_free(%struct.TYPE_7__* %120)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %163

122:                                              ; preds = %114
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 10
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @FD_ZERO(i32* %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 9
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @FD_ZERO(i32* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 8
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @FD_ZERO(i32* %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 7
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @FD_ZERO(i32* %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @FD_ZERO(i32* %141)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @FD_ZERO(i32* %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @FD_ZERO(i32* %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i32 -1, i32* %152, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i32 5, i32* %155, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load i64, i64* %3, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %162, %struct.TYPE_7__** %2, align 8
  br label %163

163:                                              ; preds = %122, %119, %9
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %164
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @ht_new(i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @sm_private_free(%struct.TYPE_7__*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
