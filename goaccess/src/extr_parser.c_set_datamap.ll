; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_set_datamap.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_set_datamap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 }

@conf = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__*)* @set_datamap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_datamap(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 9
  %13 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 %13(i32 %16, i32 %19, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 8
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %23, align 8
  %25 = icmp ne i32 (i32, i32, i32)* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 8
  %29 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %29(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @insert_root(i32 %40, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %26, %3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = icmp ne i32 (i32, i32)* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 7
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 %54(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %46
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = icmp ne i32 (i32, i32)* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 6
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 %73(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %65, %60
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 5
  %82 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %81, align 8
  %83 = icmp ne i32 (i32, i32, i32)* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  %87 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 %87(i32 %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %84, %79
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %98, align 8
  %100 = icmp ne i32 (i32, i32, i32)* %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 %104(i32 %107, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %101, %96
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %115, align 8
  %117 = icmp ne i32 (i32, i32, i32)* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 %121(i32 %124, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %118, %113
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %132, align 8
  %134 = icmp ne i32 (i32, i32, i32)* %133, null
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 2), align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %140, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 %141(i32 %144, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %138, %135, %130
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %152, align 8
  %154 = icmp ne i32 (i32, i32, i32)* %153, null
  br i1 %154, label %155, label %170

155:                                              ; preds = %150
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 1), align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %160, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i32 %161(i32 %164, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %158, %155, %150
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %172, align 8
  %174 = icmp ne i32 (i32, i32, i32)* %173, null
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 0), align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %180, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 %181(i32 %184, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %178, %175, %170
  ret void
}

declare dso_local i32 @insert_root(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
