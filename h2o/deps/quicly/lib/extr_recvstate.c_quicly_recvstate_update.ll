; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_recvstate.c_quicly_recvstate_update.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_recvstate.c_quicly_recvstate_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@UINT64_MAX = common dso_local global i64 0, align 8
@QUICLY_TRANSPORT_ERROR_FINAL_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_recvstate_update(%struct.TYPE_8__* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = call i32 @quicly_recvstate_transfer_complete(%struct.TYPE_8__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UINT64_MAX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %27, %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %35, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %26
  %51 = load i32, i32* @QUICLY_TRANSPORT_ERROR_FINAL_OFFSET, align 4
  store i32 %51, i32* %5, align 4
  br label %159

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52, %23
  br label %66

54:                                               ; preds = %4
  %55 = load i64, i64* %7, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %55, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @QUICLY_TRANSPORT_ERROR_FINAL_OFFSET, align 4
  store i32 %64, i32* %5, align 4
  br label %159

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i64, i64* %7, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %67, %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ule i64 %70, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %66
  %76 = load i64*, i64** %8, align 8
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %155

89:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %159

90:                                               ; preds = %66
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = sub nsw i64 %99, %100
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %107, %105
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %96, %90
  %110 = load i64*, i64** %8, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i64*, i64** %8, align 8
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %117, %119
  %121 = call i32 @quicly_ranges_add(%struct.TYPE_9__* %115, i64 %116, i64 %120)
  store i32 %121, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %5, align 4
  br label %159

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %109
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %154

132:                                              ; preds = %126
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %132
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %155

154:                                              ; preds = %141, %132, %126
  store i32 0, i32* %5, align 4
  br label %159

155:                                              ; preds = %153, %88
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = call i32 @quicly_ranges_clear(%struct.TYPE_9__* %157)
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %154, %123, %89, %63, %50
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(%struct.TYPE_8__*) #1

declare dso_local i32 @quicly_ranges_add(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @quicly_ranges_clear(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
