; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_clear_interests.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_clear_interests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_generic*)* @clear_interests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_interests(%struct.lev_generic* %0) #0 {
  %2 = alloca %struct.lev_generic*, align 8
  %3 = alloca i32*, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %2, align 8
  %4 = load %struct.lev_generic*, %struct.lev_generic** %2, align 8
  %5 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32* @get_user(i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.lev_generic*, %struct.lev_generic** %2, align 8
  %13 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  %16 = call i32 @user_clear_interests(i32* %11, i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32* @get_user(i32) #1

declare dso_local i32 @user_clear_interests(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
