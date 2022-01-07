; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_check_crc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_check_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"crc32 mismatch while reading snapshot %s at position %lld\0A\00", align 1
@idx_filename = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @idx_check_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idx_check_crc() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @idx_relax_crc32()
  store i32 %2, i32* %1, align 4
  %3 = call i64 (...) @readin_int()
  %4 = trunc i64 %3 to i32
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** @idx_filename, align 8
  %10 = call i32 (...) @idx_cur_read_pos()
  %11 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  %12 = call i32 @assert(i32 0)
  br label %13

13:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @idx_relax_crc32(...) #1

declare dso_local i64 @readin_int(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @idx_cur_read_pos(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
