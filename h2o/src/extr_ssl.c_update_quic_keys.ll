; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_ssl.c_update_quic_keys.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_ssl.c_update_quic_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.st_session_ticket_t** }
%struct.st_session_ticket_t = type { i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.st_quic_keyset_t* }
%struct.st_quic_keyset_t = type { i32 }

@session_tickets = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@quic_keys = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_quic_keyset_t* ()* @update_quic_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_quic_keyset_t* @update_quic_keys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.st_session_ticket_t*, align 8
  br label %3

3:                                                ; preds = %59, %0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @session_tickets, i32 0, i32 0), align 8
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 0), align 8
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %62

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %11, %7
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 1), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 0), align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 0), align 8
  %15 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %12, i64 %14
  %16 = call i32 @dispose_keyset(%struct.st_quic_keyset_t* %15)
  br label %8

17:                                               ; preds = %8
  %18 = call i32 @pthread_rwlock_rdlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @session_tickets, i32 0, i32 1))
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @session_tickets, i32 0, i32 2, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @session_tickets, i32 0, i32 2, i32 0), align 8
  %24 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1), i64 %23)
  br label %25

25:                                               ; preds = %56, %17
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 0), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @session_tickets, i32 0, i32 2, i32 0), align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @session_tickets, i32 0, i32 2, i32 1), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 0), align 8
  %32 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %30, i64 %31
  %33 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %32, align 8
  store %struct.st_session_ticket_t* %33, %struct.st_session_ticket_t** %2, align 8
  %34 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 1), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 0), align 8
  %36 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %34, i64 %35
  %37 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %38 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %43 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %46 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @EVP_CIPHER_key_length(i32 %47)
  %49 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %50 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @EVP_MD_block_size(i32 %51)
  %53 = add nsw i64 %48, %52
  %54 = call i32 @ptls_iovec_init(i32 %44, i64 %53)
  %55 = call i32 @init_keyset(%struct.st_quic_keyset_t* %36, i32 %41, i32 %54)
  br label %56

56:                                               ; preds = %29
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 0), align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 0), align 8
  br label %25

59:                                               ; preds = %25
  %60 = call i32 @pthread_rwlock_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @session_tickets, i32 0, i32 1))
  %61 = load i32, i32* %1, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 0), align 8
  br label %3

62:                                               ; preds = %3
  %63 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @quic_keys, i32 0, i32 1, i32 1), align 8
  ret %struct.st_quic_keyset_t* %63
}

declare dso_local i32 @dispose_keyset(%struct.st_quic_keyset_t*) #1

declare dso_local i32 @pthread_rwlock_rdlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @init_keyset(%struct.st_quic_keyset_t*, i32, i32) #1

declare dso_local i32 @ptls_iovec_init(i32, i64) #1

declare dso_local i64 @EVP_CIPHER_key_length(i32) #1

declare dso_local i64 @EVP_MD_block_size(i32) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
