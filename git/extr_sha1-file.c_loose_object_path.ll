; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_loose_object_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_loose_object_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @loose_object_path(%struct.repository* %0, %struct.strbuf* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.object_id*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %7 = load %struct.repository*, %struct.repository** %4, align 8
  %8 = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = load %struct.object_id*, %struct.object_id** %6, align 8
  %14 = call i8* @odb_loose_path(i32 %11, %struct.strbuf* %12, %struct.object_id* %13)
  ret i8* %14
}

declare dso_local i8* @odb_loose_path(i32, %struct.strbuf*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
