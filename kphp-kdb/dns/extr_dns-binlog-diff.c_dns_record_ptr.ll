; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-binlog-diff.c_dns_record_ptr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-binlog-diff.c_dns_record_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_dns_record_ptr = type { i32 }

@dns_type_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_dns_record_ptr*, i32)* @dns_record_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_record_ptr(%struct.lev_dns_record_ptr* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_dns_record_ptr*, align 8
  %4 = alloca i32, align 4
  store %struct.lev_dns_record_ptr* %0, %struct.lev_dns_record_ptr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lev_dns_record_ptr*, %struct.lev_dns_record_ptr** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @dns_type_ptr, align 4
  %8 = load %struct.lev_dns_record_ptr*, %struct.lev_dns_record_ptr** %3, align 8
  %9 = getelementptr inbounds %struct.lev_dns_record_ptr, %struct.lev_dns_record_ptr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @add_record(%struct.lev_dns_record_ptr* %5, i32 %6, i32 %7, i32 %10)
  ret i32 %11
}

declare dso_local i32 @add_record(%struct.lev_dns_record_ptr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
