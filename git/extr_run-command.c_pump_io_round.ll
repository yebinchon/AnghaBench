; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_pump_io_round.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_pump_io_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pump = type { i64, i32, i64, %struct.TYPE_6__, %struct.pollfd* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.pollfd = type { i64, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"poll failed\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_pump*, i32, %struct.pollfd*)* @pump_io_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pump_io_round(%struct.io_pump* %0, i32 %1, %struct.pollfd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_pump*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pollfd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.io_pump*, align 8
  %11 = alloca %struct.io_pump*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.io_pump* %0, %struct.io_pump** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pollfd* %2, %struct.pollfd** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %52, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = load %struct.io_pump*, %struct.io_pump** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %19, i64 %21
  store %struct.io_pump* %22, %struct.io_pump** %10, align 8
  %23 = load %struct.io_pump*, %struct.io_pump** %10, align 8
  %24 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %52

28:                                               ; preds = %18
  %29 = load %struct.io_pump*, %struct.io_pump** %10, align 8
  %30 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i64 %34
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %35, i32 0, i32 0
  store i64 %31, i64* %36, align 8
  %37 = load %struct.io_pump*, %struct.io_pump** %10, align 8
  %38 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i64 %42
  %44 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 8
  %45 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %45, i64 %48
  %50 = load %struct.io_pump*, %struct.io_pump** %10, align 8
  %51 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %50, i32 0, i32 4
  store %struct.pollfd* %49, %struct.pollfd** %51, align 8
  br label %52

52:                                               ; preds = %28, %27
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %14

55:                                               ; preds = %14
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %213

59:                                               ; preds = %55
  %60 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @poll(%struct.pollfd* %60, i32 %61, i32 -1)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EINTR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %213

69:                                               ; preds = %64
  %70 = call i32 @die_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %59
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %209, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %212

76:                                               ; preds = %72
  %77 = load %struct.io_pump*, %struct.io_pump** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %77, i64 %79
  store %struct.io_pump* %80, %struct.io_pump** %11, align 8
  %81 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %82 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %209

86:                                               ; preds = %76
  %87 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %88 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %87, i32 0, i32 4
  %89 = load %struct.pollfd*, %struct.pollfd** %88, align 8
  %90 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @POLLOUT, align 4
  %93 = load i32, i32* @POLLIN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @POLLHUP, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @POLLERR, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @POLLNVAL, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %91, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %86
  br label %209

104:                                              ; preds = %86
  %105 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %106 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @POLLOUT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %169

110:                                              ; preds = %104
  %111 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %112 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %115 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %120 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @xwrite(i64 %113, i32 %118, i64 %123)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %12, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %110
  %128 = load i64, i64* @errno, align 8
  %129 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %130 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %132 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @close(i64 %133)
  %135 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %136 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %135, i32 0, i32 0
  store i64 -1, i64* %136, align 8
  br label %168

137:                                              ; preds = %110
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %140 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %138
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %149 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %152, %147
  store i64 %153, i64* %151, align 8
  %154 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %155 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %137
  %161 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %162 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @close(i64 %163)
  %165 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %166 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %165, i32 0, i32 0
  store i64 -1, i64* %166, align 8
  br label %167

167:                                              ; preds = %160, %137
  br label %168

168:                                              ; preds = %167, %127
  br label %169

169:                                              ; preds = %168, %104
  %170 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %171 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @POLLIN, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %208

175:                                              ; preds = %169
  %176 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %177 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %182 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %186 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @strbuf_read_once(i32 %180, i32 %184, i32 %189)
  store i64 %190, i64* %13, align 8
  %191 = load i64, i64* %13, align 8
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %175
  %194 = load i64, i64* @errno, align 8
  %195 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %196 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %193, %175
  %198 = load i64, i64* %13, align 8
  %199 = icmp sle i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %202 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @close(i64 %203)
  %205 = load %struct.io_pump*, %struct.io_pump** %11, align 8
  %206 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %205, i32 0, i32 0
  store i64 -1, i64* %206, align 8
  br label %207

207:                                              ; preds = %200, %197
  br label %208

208:                                              ; preds = %207, %169
  br label %209

209:                                              ; preds = %208, %103, %85
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %72

212:                                              ; preds = %72
  store i32 1, i32* %4, align 4
  br label %213

213:                                              ; preds = %212, %68, %58
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i64 @xwrite(i64, i32, i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i64 @strbuf_read_once(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
