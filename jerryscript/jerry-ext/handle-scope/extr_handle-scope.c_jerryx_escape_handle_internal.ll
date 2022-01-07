; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope.c_jerryx_escape_handle_internal.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope.c_jerryx_escape_handle_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }

@jerryx_escape_called_twice = common dso_local global i32 0, align 4
@jerryx_handle_scope_mismatch = common dso_local global i32 0, align 4
@jerryx_handle_scope_ok = common dso_local global i32 0, align 4
@JERRYX_HANDLE_PRELIST_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jerryx_escape_handle_internal(%struct.TYPE_8__* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @jerryx_escape_called_twice, align 4
  store i32 %23, i32* %5, align 4
  br label %150

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = call i32* @jerryx_handle_scope_get_parent(%struct.TYPE_8__* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @jerryx_handle_scope_mismatch, align 4
  store i32 %30, i32* %5, align 4
  br label %150

31:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %53, %31
  %37 = load i64, i64* %14, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %40, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  %50 = load i64, i64* %14, align 8
  %51 = sub i64 %50, 1
  store i64 %51, i64* %12, align 8
  br label %56

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %14, align 8
  br label %36

56:                                               ; preds = %49, %36
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @jerryx_hand_scope_escape_handle_from_prelist(%struct.TYPE_8__* %60, i64 %61)
  %63 = load i64*, i64** %8, align 8
  store i64 %62, i64* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %59
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = call i32* @jerryx_handle_scope_get_parent(%struct.TYPE_8__* %75)
  %77 = call i32 @jerryx_create_handle_in_scope(i64 %74, i32* %76)
  br label %78

78:                                               ; preds = %70, %59
  %79 = load i32, i32* @jerryx_handle_scope_ok, align 4
  store i32 %79, i32* %5, align 4
  br label %150

80:                                               ; preds = %56
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @JERRYX_HANDLE_PRELIST_SIZE, align 8
  %85 = icmp ule i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = icmp eq %struct.TYPE_7__* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @jerryx_handle_scope_mismatch, align 4
  store i32 %92, i32* %5, align 4
  br label %150

93:                                               ; preds = %86, %80
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  store %struct.TYPE_7__* %96, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %17, align 8
  br label %97

97:                                               ; preds = %133, %112, %93
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %134

101:                                              ; preds = %97
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %103 = icmp eq %struct.TYPE_7__* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @jerryx_handle_scope_mismatch, align 4
  store i32 %105, i32* %5, align 4
  br label %150

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %16, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %15, align 8
  br label %97

117:                                              ; preds = %106
  store i32 1, i32* %11, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %118, %struct.TYPE_7__** %17, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %120 = icmp eq %struct.TYPE_7__* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %126, align 8
  br label %133

127:                                              ; preds = %117
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %132, align 8
  br label %133

133:                                              ; preds = %127, %121
  br label %97

134:                                              ; preds = %97
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = call i64 @jerryx_handle_scope_add_handle_to(%struct.TYPE_7__* %138, i32* %139)
  %141 = load i64*, i64** %8, align 8
  store i64 %140, i64* %141, align 8
  br label %142

142:                                              ; preds = %137, %134
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* @jerryx_handle_scope_ok, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %104, %91, %78, %29, %22
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32* @jerryx_handle_scope_get_parent(%struct.TYPE_8__*) #1

declare dso_local i64 @jerryx_hand_scope_escape_handle_from_prelist(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @jerryx_create_handle_in_scope(i64, i32*) #1

declare dso_local i64 @jerryx_handle_scope_add_handle_to(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
