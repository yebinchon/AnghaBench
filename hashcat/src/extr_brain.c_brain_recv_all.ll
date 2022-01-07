; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_recv_all.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_recv_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64*, i32* }
%struct.TYPE_6__ = type { i32 }

@LINK_SPEED_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brain_recv_all(i32 %0, i8* %1, i64 %2, i32 %3, %struct.TYPE_8__* %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %13, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %14, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %6
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = call i32 @hc_timer_set(i32* %31)
  br label %33

33:                                               ; preds = %22, %6
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @recv(i32 %34, i8* %35, i64 %36, i32 %37)
  store i64 %38, i64* %15, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %33
  %42 = load i64, i64* %15, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  store i64 %42, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* @LINK_SPEED_COUNT, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %41
  %61 = load i64, i64* %15, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %68

68:                                               ; preds = %60, %33
  %69 = load i64, i64* %15, align 8
  %70 = icmp sle i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %162

72:                                               ; preds = %68
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %162

81:                                               ; preds = %75, %72
  br label %82

82:                                               ; preds = %151, %81
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %155

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  store i8* %87, i8** %16, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %89 = icmp ne %struct.TYPE_8__* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = call i32 @hc_timer_set(i32* %97)
  br label %99

99:                                               ; preds = %90, %86
  %100 = load i32, i32* %8, align 4
  %101 = load i8*, i8** %16, align 8
  %102 = load i64, i64* %15, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %15, align 8
  %106 = sub i64 %104, %105
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @recv(i32 %100, i8* %103, i64 %106, i32 %107)
  store i64 %108, i64* %17, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %110 = icmp ne %struct.TYPE_8__* %109, null
  br i1 %110, label %111, label %138

111:                                              ; preds = %99
  %112 = load i64, i64* %17, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  store i64 %112, i64* %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load i32, i32* @LINK_SPEED_COUNT, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %111
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %111
  %131 = load i64, i64* %17, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  br label %138

138:                                              ; preds = %130, %99
  %139 = load i64, i64* %17, align 8
  %140 = icmp sle i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  br label %162

142:                                              ; preds = %138
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %144 = icmp ne %struct.TYPE_6__* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %155

151:                                              ; preds = %145, %142
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %15, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %15, align 8
  br label %82

155:                                              ; preds = %150, %82
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %155
  store i32 1, i32* %7, align 4
  br label %162

162:                                              ; preds = %161, %141, %80, %71
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @hc_timer_set(i32*) #1

declare dso_local i64 @recv(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
