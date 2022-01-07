; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_ntlm_client_set_credentials.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_ntlm_client_set_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntlm_client_set_credentials(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = call i32 @assert(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = call i32 @free_credentials(%struct.TYPE_7__* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strdup(i8* %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %16, %4
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @strdup(i8* %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = icmp eq i32* %29, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %26, %23
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @strdup(i8* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 10
  store i32* %39, i32** %41, align 8
  %42 = icmp eq i32* %39, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %26, %16
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = call i32 @ntlm_client_set_errmsg(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %130

46:                                               ; preds = %36, %33
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %104

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = call i64 @supports_unicode(%struct.TYPE_7__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %104

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @strdup(i8* %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  %59 = icmp eq i32* %56, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = call i32 @ntlm_client_set_errmsg(%struct.TYPE_7__* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %130

63:                                               ; preds = %53
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @utf8upr(i32* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 9
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 7
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 7
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @strlen(i32* %80)
  %82 = call i32 @ntlm_unicode_utf8_to_16(i32* %69, i32* %71, i32 %74, i32* %77, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %130

85:                                               ; preds = %63
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @strlen(i32* %98)
  %100 = call i32 @ntlm_unicode_utf8_to_16(i32* %87, i32* %89, i32 %92, i32* %95, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %85
  store i32 -1, i32* %5, align 4
  br label %130

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103, %49, %46
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = call i64 @supports_unicode(%struct.TYPE_7__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @strlen(i32* %124)
  %126 = call i32 @ntlm_unicode_utf8_to_16(i32* %113, i32* %115, i32 %118, i32* %121, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %111
  store i32 -1, i32* %5, align 4
  br label %130

129:                                              ; preds = %111, %107, %104
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %128, %102, %84, %60, %43
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @free_credentials(%struct.TYPE_7__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ntlm_client_set_errmsg(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @supports_unicode(%struct.TYPE_7__*) #1

declare dso_local i32 @utf8upr(i32*) #1

declare dso_local i32 @ntlm_unicode_utf8_to_16(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
