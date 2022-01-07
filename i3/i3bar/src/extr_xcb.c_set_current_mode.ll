; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_set_current_mode.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_set_current_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode = type { i32* }

@binding = common dso_local global %struct.mode zeroinitializer, align 8
@activated_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_current_mode(%struct.mode* %0) #0 {
  %2 = alloca %struct.mode*, align 8
  store %struct.mode* %0, %struct.mode** %2, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.mode, %struct.mode* @binding, i32 0, i32 0), align 8
  %4 = call i32 @I3STRING_FREE(i32* %3)
  %5 = load %struct.mode*, %struct.mode** %2, align 8
  %6 = bitcast %struct.mode* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.mode* @binding to i8*), i8* align 8 %6, i64 8, i1 false)
  %7 = load i32*, i32** getelementptr inbounds (%struct.mode, %struct.mode* @binding, i32 0, i32 0), align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  store i32 %9, i32* @activated_mode, align 4
  ret void
}

declare dso_local i32 @I3STRING_FREE(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
