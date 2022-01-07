; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_pp_start_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_pp_start_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parallel_processes = type { i32, i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (i32*, i32, i32)*, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GIT_CP_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"bookkeeping is hard\00", align 1
@GIT_CP_WORKING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parallel_processes*)* @pp_start_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_start_one(%struct.parallel_processes* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parallel_processes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.parallel_processes* %0, %struct.parallel_processes** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %9 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %14 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GIT_CP_FREE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %28

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %23, %6
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %31 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @BUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  %37 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %38 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %38, align 8
  %40 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %41 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %48 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %47, i32 0, i32 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %55 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %58 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = call i32 %39(%struct.TYPE_7__* %46, i32* %53, i32 %56, i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %36
  %68 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %69 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %68, i32 0, i32 7
  %70 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %71 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %70, i32 0, i32 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = call i32 @strbuf_addbuf(i32* %69, i32* %76)
  %78 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %79 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = call i32 @strbuf_reset(i32* %84)
  store i32 1, i32* %2, align 4
  br label %197

86:                                               ; preds = %36
  %87 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %88 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %87, i32 0, i32 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 -1, i32* %94, align 8
  %95 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %96 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %104 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  %111 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %112 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %111, i32 0, i32 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = call i64 @start_command(%struct.TYPE_7__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %168

120:                                              ; preds = %86
  %121 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %122 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %121, i32 0, i32 2
  %123 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %122, align 8
  %124 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %125 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %124, i32 0, i32 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %132 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %135 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %134, i32 0, i32 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %123(i32* %130, i32 %133, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %144 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %143, i32 0, i32 7
  %145 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %146 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %145, i32 0, i32 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = call i32 @strbuf_addbuf(i32* %144, i32* %151)
  %153 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %154 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %153, i32 0, i32 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = call i32 @strbuf_reset(i32* %159)
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %120
  %164 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %165 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %164, i32 0, i32 3
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %120
  %167 = load i32, i32* %5, align 4
  store i32 %167, i32* %2, align 4
  br label %197

168:                                              ; preds = %86
  %169 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %170 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  %173 = load i64, i64* @GIT_CP_WORKING, align 8
  %174 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %175 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %174, i32 0, i32 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i64 %173, i64* %180, align 8
  %181 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %182 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %181, i32 0, i32 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %191 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %190, i32 0, i32 5
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  store i32 %189, i32* %196, align 4
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %168, %166, %67
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @strbuf_addbuf(i32*, i32*) #1

declare dso_local i32 @strbuf_reset(i32*) #1

declare dso_local i64 @start_command(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
