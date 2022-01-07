; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_ssl.c_ticket_init_defaults.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_ssl.c_ticket_init_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ticket_internal_updater = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ticket_init_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ticket_init_defaults() #0 {
  %1 = load i32, i32* @ticket_internal_updater, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @conf, i32 0, i32 0, i32 1), align 4
  %2 = call i32 (...) @EVP_aes_256_cbc()
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @conf, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %3 = call i32 (...) @EVP_sha256()
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @conf, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @EVP_aes_256_cbc(...) #1

declare dso_local i32 @EVP_sha256(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
