; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_delete_pending_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_delete_pending_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"delete_pending_query(%p,%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_pending_query(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %3 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %4 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %5 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %3, i32 %6)
  %8 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %9 = call i32 @delete_conn_query(%struct.conn_query* %8)
  %10 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %11 = call i32 @zfree(%struct.conn_query* %10, i32 4)
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.conn_query*, i32) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

declare dso_local i32 @zfree(%struct.conn_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
