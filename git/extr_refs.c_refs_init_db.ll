; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_refs_init_db.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_refs_init_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ref_store*, %struct.strbuf*)* }

@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refs_init_db(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca %struct.ref_store*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %4 = load i32, i32* @the_repository, align 4
  %5 = call %struct.ref_store* @get_main_ref_store(i32 %4)
  store %struct.ref_store* %5, %struct.ref_store** %3, align 8
  %6 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %7 = getelementptr inbounds %struct.ref_store, %struct.ref_store* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.ref_store*, %struct.strbuf*)*, i32 (%struct.ref_store*, %struct.strbuf*)** %9, align 8
  %11 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %13 = call i32 %10(%struct.ref_store* %11, %struct.strbuf* %12)
  ret i32 %13
}

declare dso_local %struct.ref_store* @get_main_ref_store(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
