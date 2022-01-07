; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_extract.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.bfq_entity = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_root*, %struct.bfq_entity*)* @bfq_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_extract(%struct.rb_root* %0, %struct.bfq_entity* %1) #0 {
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.bfq_entity*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  store %struct.bfq_entity* %1, %struct.bfq_entity** %4, align 8
  %5 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %6 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %5, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %8 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %7, i32 0, i32 0
  %9 = load %struct.rb_root*, %struct.rb_root** %3, align 8
  %10 = call i32 @rb_erase(i32* %8, %struct.rb_root* %9)
  ret void
}

declare dso_local i32 @rb_erase(i32*, %struct.rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
