; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_message_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_message_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.imessage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_message_flags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.imessage, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_9__* @get_user(i32 %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @conv_uid(i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  br label %132

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %114

26:                                               ; preds = %23
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.TYPE_10__* @tree_lookup(i32 %29, i32 %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %9, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_10__* @tree_lookup(i32 %34, i32 %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %10, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %132

45:                                               ; preds = %39, %26
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %54, %57
  %59 = or i32 %58, -65536
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %4, align 4
  br label %132

65:                                               ; preds = %51, %48, %45
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = icmp ne %struct.TYPE_10__* %66, null
  br i1 %67, label %68, label %113

68:                                               ; preds = %65
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 7
  switch i32 %72, label %95 [
    i32 132, label %73
    i32 131, label %74
    i32 130, label %74
    i32 129, label %85
    i32 128, label %89
  ]

73:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %132

74:                                               ; preds = %68, %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = icmp ne %struct.TYPE_10__* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %11, align 4
  br label %97

85:                                               ; preds = %68
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %11, align 4
  br label %97

89:                                               ; preds = %68
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  br label %97

95:                                               ; preds = %68
  %96 = call i32 @assert(i32 0)
  br label %97

97:                                               ; preds = %95, %89, %85, %74
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = icmp ne %struct.TYPE_10__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %101, %105
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %106, %109
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %100, %97
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %132

113:                                              ; preds = %65
  br label %114

114:                                              ; preds = %113, %23
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp sgt i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @load_message(%struct.imessage* %13, i32 %115, i32 %116, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %4, align 4
  br label %132

125:                                              ; preds = %114
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %132

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.imessage, %struct.imessage* %13, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %129, %128, %123, %111, %73, %61, %44, %22
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_9__* @get_user(i32) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.TYPE_10__* @tree_lookup(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @load_message(%struct.imessage*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
