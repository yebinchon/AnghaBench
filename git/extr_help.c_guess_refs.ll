; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_guess_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_guess_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.similar_ref_cb = type { i8*, %struct.string_list* }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@append_similar_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @guess_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guess_refs(i8* %0) #0 {
  %2 = alloca %struct.string_list, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.similar_ref_cb, align 8
  store i8* %0, i8** %3, align 8
  %5 = bitcast %struct.string_list* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds %struct.similar_ref_cb, %struct.similar_ref_cb* %4, i32 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.similar_ref_cb, %struct.similar_ref_cb* %4, i32 0, i32 1
  store %struct.string_list* %2, %struct.string_list** %8, align 8
  %9 = load i32, i32* @append_similar_ref, align 4
  %10 = call i32 @for_each_ref(i32 %9, %struct.similar_ref_cb* %4)
  %11 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @for_each_ref(i32, %struct.similar_ref_cb*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
