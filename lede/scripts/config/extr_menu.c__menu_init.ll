; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_menu.c__menu_init.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_menu.c__menu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@rootmenu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@current_menu = common dso_local global %struct.TYPE_4__* null, align 8
@current_entry = common dso_local global %struct.TYPE_4__* null, align 8
@last_entry_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_menu_init() #0 {
  store %struct.TYPE_4__* @rootmenu, %struct.TYPE_4__** @current_menu, align 8
  store %struct.TYPE_4__* @rootmenu, %struct.TYPE_4__** @current_entry, align 8
  store i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rootmenu, i32 0, i32 0), i32** @last_entry_ptr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
