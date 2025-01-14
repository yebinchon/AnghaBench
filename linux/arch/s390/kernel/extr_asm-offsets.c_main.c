
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct kexec_sha_region {int dummy; } ;
struct TYPE_6__ {int ****** regs; int ****** fpc; } ;
struct TYPE_5__ {int ****** paid; int ****** address; int ****** cause; } ;
struct TYPE_4__ {int ****** flags; } ;


 int BLANK () ;
 int CLOCK_MONOTONIC ;
 int CLOCK_MONOTONIC_COARSE ;
 int CLOCK_REALTIME ;
 int CLOCK_REALTIME_COARSE ;
 int CLOCK_THREAD_CPUTIME_ID ;
 int DEFINE (int ,int) ;
 int LOW_RES_NSEC ;
 int MONOTONIC_RES_NSEC ;
 int OFFSET (int ,int ****,int ****) ;
 int __CLOCK_COARSE_RES ;
 int __CLOCK_IDLE_ENTER ;
 int __CLOCK_IDLE_EXIT ;
 int __CLOCK_MONOTONIC ;
 int __CLOCK_MONOTONIC_COARSE ;
 int __CLOCK_REALTIME ;
 int __CLOCK_REALTIME_COARSE ;
 int __CLOCK_REALTIME_RES ;
 int __CLOCK_THREAD_CPUTIME_ID ;
 int __GMAP_ASCE ;
 int __KEXEC_SHA_REGION_LEN ;
 int __KEXEC_SHA_REGION_SIZE ;
 int __KEXEC_SHA_REGION_START ;
 int __LC_AREGS_SAVE_AREA ;
 int __LC_AR_MODE_ID ;
 int __LC_ASYNC_ENTER_TIMER ;
 int __LC_ASYNC_STACK ;
 int __LC_BOOT_CLOCK ;
 int __LC_BR_R1 ;
 int __LC_CLOCK_COMPARATOR ;
 int __LC_CLOCK_COMP_SAVE_AREA ;
 int __LC_CPU_FLAGS ;
 int __LC_CPU_TIMER_SAVE_AREA ;
 int __LC_CREGS_SAVE_AREA ;
 int __LC_CURRENT ;
 int __LC_CURRENT_PID ;
 int __LC_DATA_EXC_CODE ;
 int __LC_DUMP_REIPL ;
 int __LC_EXC_ACCESS_ID ;
 int __LC_EXIT_TIMER ;
 int __LC_EXT_CPU_ADDR ;
 int __LC_EXT_DAMAGE_CODE ;
 int __LC_EXT_INT_CODE ;
 int __LC_EXT_NEW_PSW ;
 int __LC_EXT_OLD_PSW ;
 int __LC_EXT_PARAMS ;
 int __LC_EXT_PARAMS2 ;
 int __LC_FPREGS_SAVE_AREA ;
 int __LC_FP_CREG_SAVE_AREA ;
 int __LC_GMAP ;
 int __LC_GPREGS_SAVE_AREA ;
 int __LC_INT_CLOCK ;
 int __LC_IO_INT_PARM ;
 int __LC_IO_INT_WORD ;
 int __LC_IO_NEW_PSW ;
 int __LC_IO_OLD_PSW ;
 int __LC_KERNEL_STACK ;
 int __LC_LAST_BREAK ;
 int __LC_LAST_UPDATE_CLOCK ;
 int __LC_LAST_UPDATE_TIMER ;
 int __LC_LPP ;
 int __LC_MACHINE_FLAGS ;
 int __LC_MCCK_CLOCK ;
 int __LC_MCCK_CODE ;
 int __LC_MCCK_ENTER_TIMER ;
 int __LC_MCCK_FAIL_STOR_ADDR ;
 int __LC_MCESAD ;
 int __LC_MCK_NEW_PSW ;
 int __LC_MCK_OLD_PSW ;
 int __LC_MON_CLASS_NR ;
 int __LC_MON_CODE ;
 int __LC_NODAT_STACK ;
 int __LC_OP_ACCESS_ID ;
 int __LC_PERCPU_OFFSET ;
 int __LC_PER_ACCESS_ID ;
 int __LC_PER_ADDRESS ;
 int __LC_PER_ATMID ;
 int __LC_PER_CODE ;
 int __LC_PGM_ILC ;
 int __LC_PGM_INT_CODE ;
 int __LC_PGM_NEW_PSW ;
 int __LC_PGM_OLD_PSW ;
 int __LC_PGM_TDB ;
 int __LC_PREEMPT_COUNT ;
 int __LC_PREFIX_SAVE_AREA ;
 int __LC_PSW_SAVE_AREA ;
 int __LC_RESTART_DATA ;
 int __LC_RESTART_FN ;
 int __LC_RESTART_SOURCE ;
 int __LC_RESTART_STACK ;
 int __LC_RETURN_MCCK_PSW ;
 int __LC_RETURN_PSW ;
 int __LC_RST_NEW_PSW ;
 int __LC_RST_OLD_PSW ;
 int __LC_SAVE_AREA_ASYNC ;
 int __LC_SAVE_AREA_RESTART ;
 int __LC_SAVE_AREA_SYNC ;
 int __LC_STEAL_TIMER ;
 int __LC_STFLE_FAC_LIST ;
 int __LC_STFL_FAC_LIST ;
 int __LC_SUBCHANNEL_ID ;
 int __LC_SUBCHANNEL_NR ;
 int __LC_SVC_ILC ;
 int __LC_SVC_INT_CODE ;
 int __LC_SVC_NEW_PSW ;
 int __LC_SVC_OLD_PSW ;
 int __LC_SYNC_ENTER_TIMER ;
 int __LC_SYSTEM_TIMER ;
 int __LC_TOD_PROGREG_SAVE_AREA ;
 int __LC_TRANS_EXC_CODE ;
 int __LC_USER_ASCE ;
 int __LC_USER_TIMER ;
 int __LC_VDSO_ASCE ;
 int __LC_VDSO_PER_CPU ;
 int __MCESA_GS_SAVE_AREA ;
 int __PT_ARGS ;
 int __PT_FLAGS ;
 int __PT_GPRS ;
 int __PT_INT_CODE ;
 int __PT_INT_PARM ;
 int __PT_INT_PARM_LONG ;
 int __PT_ORIG_GPR2 ;
 int __PT_PSW ;
 int __PT_SIZE ;
 int __SF_BACKCHAIN ;
 int __SF_EMPTY ;
 int __SF_GPRS ;
 int __SF_SIE_CONTROL ;
 int __SF_SIE_FLAGS ;
 int __SF_SIE_REASON ;
 int __SF_SIE_SAVEAREA ;
 int __SIE_PROG0C ;
 int __SIE_PROG20 ;
 int __TASK_pid ;
 int __TASK_stack ;
 int __TASK_thread ;
 int __THREAD_FPU_fpc ;
 int __THREAD_FPU_regs ;
 int __THREAD_ksp ;
 int __THREAD_last_break ;
 int __THREAD_per_address ;
 int __THREAD_per_cause ;
 int __THREAD_per_paid ;
 int __THREAD_sysc_table ;
 int __THREAD_trap_tdb ;
 int __TIMER_IDLE_ENTER ;
 int __TIMER_IDLE_EXIT ;
 int __TI_flags ;
 int __VDSO_CPU_NR ;
 int __VDSO_ECTG_BASE ;
 int __VDSO_ECTG_OK ;
 int __VDSO_ECTG_USER ;
 int __VDSO_NODE_ID ;
 int __VDSO_TIMEZONE ;
 int __VDSO_TK_MULT ;
 int __VDSO_TK_SHIFT ;
 int __VDSO_TS_DIR ;
 int __VDSO_TS_END ;
 int __VDSO_UPD_COUNT ;
 int __VDSO_WTOM_CRS_NSEC ;
 int __VDSO_WTOM_CRS_SEC ;
 int __VDSO_WTOM_NSEC ;
 int __VDSO_WTOM_SEC ;
 int __VDSO_XTIME_CRS_NSEC ;
 int __VDSO_XTIME_CRS_SEC ;
 int __VDSO_XTIME_NSEC ;
 int __VDSO_XTIME_SEC ;
 int __VDSO_XTIME_STAMP ;
 int **** access_regs_save_area ;
 int **** ar_mode_id ;
 int **** args ;
 int **** asce ;
 int **** async_enter_timer ;
 int **** async_stack ;
 int **** back_chain ;
 int **** boot_clock ;
 int **** br_r1_trampoline ;
 int **** breaking_event_addr ;
 int **** clock_comp_save_area ;
 int **** clock_comparator ;
 int **** clock_idle_enter ;
 int **** clock_idle_exit ;
 int **** cpu_flags ;
 int **** cpu_nr ;
 int **** cpu_timer_save_area ;
 int **** cregs_save_area ;
 int **** current_pid ;
 int **** current_task ;
 int **** data_exc_code ;
 int **** ectg_available ;
 int **** ectg_timer_base ;
 int **** ectg_user_time ;
 int ***** empty1 ;
 int **** exc_access_id ;
 int **** exit_timer ;
 int **** ext_cpu_addr ;
 int **** ext_int_code ;
 int **** ext_params ;
 int **** ext_params2 ;
 int **** external_damage_code ;
 int **** external_new_psw ;
 int **** external_old_psw ;
 int **** failing_storage_address ;
 int **** flags ;
 int **** floating_pt_save_area ;
 int **** fpt_creg_save_area ;
 TYPE_3__ fpu ;
 int **** gmap ;
 int **** gpregs_save_area ;
 int **** gprs ;
 int **** guarded_storage_save_area ;
 int **** int_clock ;
 int **** int_code ;
 int **** int_parm ;
 int **** int_parm_long ;
 int **** io_int_parm ;
 int **** io_int_word ;
 int **** io_new_psw ;
 int **** io_old_psw ;
 int **** ipib ;
 int **** kernel_stack ;
 int **** kexec_sha_region ;
 int **** ksp ;
 int **** kvm_s390_sie_block ;
 int **** last_break ;
 int **** last_update_clock ;
 int **** last_update_timer ;
 int **** len ;
 int **** lowcore ;
 int **** lpp ;
 int **** machine_flags ;
 int **** mcck_clock ;
 int **** mcck_enter_timer ;
 int **** mcck_interruption_code ;
 int **** mcck_new_psw ;
 int **** mcck_old_psw ;
 int **** mcesa ;
 int **** mcesad ;
 int **** mon_class_num ;
 int **** monitor_code ;
 int **** nodat_stack ;
 int **** node_id ;
 int **** op_access_id ;
 int **** orig_gpr2 ;
 int **** per_access_id ;
 int **** per_address ;
 int **** per_atmid ;
 int **** per_code ;
 TYPE_2__ per_event ;
 int **** percpu_offset ;
 int **** pgm_code ;
 int **** pgm_ilc ;
 int **** pgm_tdb ;
 int **** pid ;
 int **** preempt_count ;
 int **** prefixreg_save_area ;
 int **** prog0c ;
 int **** prog20 ;
 int **** program_new_psw ;
 int **** program_old_psw ;
 int **** psw ;
 int **** psw_save_area ;
 int **** pt_regs ;
 int **** restart_data ;
 int **** restart_fn ;
 int **** restart_old_psw ;
 int **** restart_psw ;
 int **** restart_source ;
 int **** restart_stack ;
 int **** return_mcck_psw ;
 int **** return_psw ;
 int **** s390_idle_data ;
 int **** save_area_async ;
 int **** save_area_restart ;
 int **** save_area_sync ;
 int **** stack ;
 int **** stack_frame ;
 int **** start ;
 int **** steal_timer ;
 int **** stfl_fac_list ;
 int **** stfle_fac_list ;
 int **** subchannel_id ;
 int **** subchannel_nr ;
 int **** svc_code ;
 int **** svc_ilc ;
 int **** svc_new_psw ;
 int **** svc_old_psw ;
 int **** sync_enter_timer ;
 int **** sys_call_table ;
 int **** system_timer ;
 int **** task_struct ;
 int **** tb_update_count ;
 int **** thread ;
 TYPE_1__ thread_info ;
 int **** thread_struct ;
 int **** timer_idle_enter ;
 int **** timer_idle_exit ;
 int **** tk_mult ;
 int **** tk_shift ;
 int **** tod_progreg_save_area ;
 int **** trans_exc_code ;
 int **** trap_tdb ;
 int **** ts_dir ;
 int **** ts_end ;
 int **** tz_minuteswest ;
 int **** user_asce ;
 int **** user_timer ;
 int **** vdso_asce ;
 int **** vdso_data ;
 int **** vdso_per_cpu_data ;
 int **** wtom_clock_nsec ;
 int **** wtom_clock_sec ;
 int **** wtom_coarse_nsec ;
 int **** wtom_coarse_sec ;
 int **** xtime_clock_nsec ;
 int **** xtime_clock_sec ;
 int **** xtime_coarse_nsec ;
 int **** xtime_coarse_sec ;
 int **** xtime_tod_stamp ;

int main(void)
{

 OFFSET(__TASK_stack, task_struct, stack);
 OFFSET(__TASK_thread, task_struct, thread);
 OFFSET(__TASK_pid, task_struct, pid);
 BLANK();

 OFFSET(__THREAD_ksp, thread_struct, ksp);
 OFFSET(__THREAD_sysc_table, thread_struct, sys_call_table);
 OFFSET(__THREAD_last_break, thread_struct, last_break);
 OFFSET(__THREAD_FPU_fpc, thread_struct, fpu.fpc);
 OFFSET(__THREAD_FPU_regs, thread_struct, fpu.regs);
 OFFSET(__THREAD_per_cause, thread_struct, per_event.cause);
 OFFSET(__THREAD_per_address, thread_struct, per_event.address);
 OFFSET(__THREAD_per_paid, thread_struct, per_event.paid);
 OFFSET(__THREAD_trap_tdb, thread_struct, trap_tdb);
 BLANK();

 OFFSET(__TI_flags, task_struct, thread_info.flags);
 BLANK();

 OFFSET(__PT_ARGS, pt_regs, args);
 OFFSET(__PT_PSW, pt_regs, psw);
 OFFSET(__PT_GPRS, pt_regs, gprs);
 OFFSET(__PT_ORIG_GPR2, pt_regs, orig_gpr2);
 OFFSET(__PT_INT_CODE, pt_regs, int_code);
 OFFSET(__PT_INT_PARM, pt_regs, int_parm);
 OFFSET(__PT_INT_PARM_LONG, pt_regs, int_parm_long);
 OFFSET(__PT_FLAGS, pt_regs, flags);
 DEFINE(__PT_SIZE, sizeof(struct pt_regs));
 BLANK();

 OFFSET(__SF_BACKCHAIN, stack_frame, back_chain);
 OFFSET(__SF_GPRS, stack_frame, gprs);
 OFFSET(__SF_EMPTY, stack_frame, empty1);
 OFFSET(__SF_SIE_CONTROL, stack_frame, empty1[0]);
 OFFSET(__SF_SIE_SAVEAREA, stack_frame, empty1[1]);
 OFFSET(__SF_SIE_REASON, stack_frame, empty1[2]);
 OFFSET(__SF_SIE_FLAGS, stack_frame, empty1[3]);
 BLANK();

 OFFSET(__VDSO_UPD_COUNT, vdso_data, tb_update_count);
 OFFSET(__VDSO_XTIME_STAMP, vdso_data, xtime_tod_stamp);
 OFFSET(__VDSO_XTIME_SEC, vdso_data, xtime_clock_sec);
 OFFSET(__VDSO_XTIME_NSEC, vdso_data, xtime_clock_nsec);
 OFFSET(__VDSO_XTIME_CRS_SEC, vdso_data, xtime_coarse_sec);
 OFFSET(__VDSO_XTIME_CRS_NSEC, vdso_data, xtime_coarse_nsec);
 OFFSET(__VDSO_WTOM_SEC, vdso_data, wtom_clock_sec);
 OFFSET(__VDSO_WTOM_NSEC, vdso_data, wtom_clock_nsec);
 OFFSET(__VDSO_WTOM_CRS_SEC, vdso_data, wtom_coarse_sec);
 OFFSET(__VDSO_WTOM_CRS_NSEC, vdso_data, wtom_coarse_nsec);
 OFFSET(__VDSO_TIMEZONE, vdso_data, tz_minuteswest);
 OFFSET(__VDSO_ECTG_OK, vdso_data, ectg_available);
 OFFSET(__VDSO_TK_MULT, vdso_data, tk_mult);
 OFFSET(__VDSO_TK_SHIFT, vdso_data, tk_shift);
 OFFSET(__VDSO_TS_DIR, vdso_data, ts_dir);
 OFFSET(__VDSO_TS_END, vdso_data, ts_end);
 OFFSET(__VDSO_ECTG_BASE, vdso_per_cpu_data, ectg_timer_base);
 OFFSET(__VDSO_ECTG_USER, vdso_per_cpu_data, ectg_user_time);
 OFFSET(__VDSO_CPU_NR, vdso_per_cpu_data, cpu_nr);
 OFFSET(__VDSO_NODE_ID, vdso_per_cpu_data, node_id);
 BLANK();

 DEFINE(__CLOCK_REALTIME, CLOCK_REALTIME);
 DEFINE(__CLOCK_MONOTONIC, CLOCK_MONOTONIC);
 DEFINE(__CLOCK_REALTIME_COARSE, CLOCK_REALTIME_COARSE);
 DEFINE(__CLOCK_MONOTONIC_COARSE, CLOCK_MONOTONIC_COARSE);
 DEFINE(__CLOCK_THREAD_CPUTIME_ID, CLOCK_THREAD_CPUTIME_ID);
 DEFINE(__CLOCK_REALTIME_RES, MONOTONIC_RES_NSEC);
 DEFINE(__CLOCK_COARSE_RES, LOW_RES_NSEC);
 BLANK();

 OFFSET(__CLOCK_IDLE_ENTER, s390_idle_data, clock_idle_enter);
 OFFSET(__CLOCK_IDLE_EXIT, s390_idle_data, clock_idle_exit);
 OFFSET(__TIMER_IDLE_ENTER, s390_idle_data, timer_idle_enter);
 OFFSET(__TIMER_IDLE_EXIT, s390_idle_data, timer_idle_exit);
 BLANK();

 OFFSET(__LC_EXT_PARAMS, lowcore, ext_params);
 OFFSET(__LC_EXT_CPU_ADDR, lowcore, ext_cpu_addr);
 OFFSET(__LC_EXT_INT_CODE, lowcore, ext_int_code);
 OFFSET(__LC_SVC_ILC, lowcore, svc_ilc);
 OFFSET(__LC_SVC_INT_CODE, lowcore, svc_code);
 OFFSET(__LC_PGM_ILC, lowcore, pgm_ilc);
 OFFSET(__LC_PGM_INT_CODE, lowcore, pgm_code);
 OFFSET(__LC_DATA_EXC_CODE, lowcore, data_exc_code);
 OFFSET(__LC_MON_CLASS_NR, lowcore, mon_class_num);
 OFFSET(__LC_PER_CODE, lowcore, per_code);
 OFFSET(__LC_PER_ATMID, lowcore, per_atmid);
 OFFSET(__LC_PER_ADDRESS, lowcore, per_address);
 OFFSET(__LC_EXC_ACCESS_ID, lowcore, exc_access_id);
 OFFSET(__LC_PER_ACCESS_ID, lowcore, per_access_id);
 OFFSET(__LC_OP_ACCESS_ID, lowcore, op_access_id);
 OFFSET(__LC_AR_MODE_ID, lowcore, ar_mode_id);
 OFFSET(__LC_TRANS_EXC_CODE, lowcore, trans_exc_code);
 OFFSET(__LC_MON_CODE, lowcore, monitor_code);
 OFFSET(__LC_SUBCHANNEL_ID, lowcore, subchannel_id);
 OFFSET(__LC_SUBCHANNEL_NR, lowcore, subchannel_nr);
 OFFSET(__LC_IO_INT_PARM, lowcore, io_int_parm);
 OFFSET(__LC_IO_INT_WORD, lowcore, io_int_word);
 OFFSET(__LC_STFL_FAC_LIST, lowcore, stfl_fac_list);
 OFFSET(__LC_STFLE_FAC_LIST, lowcore, stfle_fac_list);
 OFFSET(__LC_MCCK_CODE, lowcore, mcck_interruption_code);
 OFFSET(__LC_EXT_DAMAGE_CODE, lowcore, external_damage_code);
 OFFSET(__LC_MCCK_FAIL_STOR_ADDR, lowcore, failing_storage_address);
 OFFSET(__LC_LAST_BREAK, lowcore, breaking_event_addr);
 OFFSET(__LC_RST_OLD_PSW, lowcore, restart_old_psw);
 OFFSET(__LC_EXT_OLD_PSW, lowcore, external_old_psw);
 OFFSET(__LC_SVC_OLD_PSW, lowcore, svc_old_psw);
 OFFSET(__LC_PGM_OLD_PSW, lowcore, program_old_psw);
 OFFSET(__LC_MCK_OLD_PSW, lowcore, mcck_old_psw);
 OFFSET(__LC_IO_OLD_PSW, lowcore, io_old_psw);
 OFFSET(__LC_RST_NEW_PSW, lowcore, restart_psw);
 OFFSET(__LC_EXT_NEW_PSW, lowcore, external_new_psw);
 OFFSET(__LC_SVC_NEW_PSW, lowcore, svc_new_psw);
 OFFSET(__LC_PGM_NEW_PSW, lowcore, program_new_psw);
 OFFSET(__LC_MCK_NEW_PSW, lowcore, mcck_new_psw);
 OFFSET(__LC_IO_NEW_PSW, lowcore, io_new_psw);

 OFFSET(__LC_SAVE_AREA_SYNC, lowcore, save_area_sync);
 OFFSET(__LC_SAVE_AREA_ASYNC, lowcore, save_area_async);
 OFFSET(__LC_SAVE_AREA_RESTART, lowcore, save_area_restart);
 OFFSET(__LC_CPU_FLAGS, lowcore, cpu_flags);
 OFFSET(__LC_RETURN_PSW, lowcore, return_psw);
 OFFSET(__LC_RETURN_MCCK_PSW, lowcore, return_mcck_psw);
 OFFSET(__LC_SYNC_ENTER_TIMER, lowcore, sync_enter_timer);
 OFFSET(__LC_ASYNC_ENTER_TIMER, lowcore, async_enter_timer);
 OFFSET(__LC_MCCK_ENTER_TIMER, lowcore, mcck_enter_timer);
 OFFSET(__LC_EXIT_TIMER, lowcore, exit_timer);
 OFFSET(__LC_USER_TIMER, lowcore, user_timer);
 OFFSET(__LC_SYSTEM_TIMER, lowcore, system_timer);
 OFFSET(__LC_STEAL_TIMER, lowcore, steal_timer);
 OFFSET(__LC_LAST_UPDATE_TIMER, lowcore, last_update_timer);
 OFFSET(__LC_LAST_UPDATE_CLOCK, lowcore, last_update_clock);
 OFFSET(__LC_INT_CLOCK, lowcore, int_clock);
 OFFSET(__LC_MCCK_CLOCK, lowcore, mcck_clock);
 OFFSET(__LC_CLOCK_COMPARATOR, lowcore, clock_comparator);
 OFFSET(__LC_BOOT_CLOCK, lowcore, boot_clock);
 OFFSET(__LC_CURRENT, lowcore, current_task);
 OFFSET(__LC_KERNEL_STACK, lowcore, kernel_stack);
 OFFSET(__LC_ASYNC_STACK, lowcore, async_stack);
 OFFSET(__LC_NODAT_STACK, lowcore, nodat_stack);
 OFFSET(__LC_RESTART_STACK, lowcore, restart_stack);
 OFFSET(__LC_RESTART_FN, lowcore, restart_fn);
 OFFSET(__LC_RESTART_DATA, lowcore, restart_data);
 OFFSET(__LC_RESTART_SOURCE, lowcore, restart_source);
 OFFSET(__LC_USER_ASCE, lowcore, user_asce);
 OFFSET(__LC_VDSO_ASCE, lowcore, vdso_asce);
 OFFSET(__LC_LPP, lowcore, lpp);
 OFFSET(__LC_CURRENT_PID, lowcore, current_pid);
 OFFSET(__LC_PERCPU_OFFSET, lowcore, percpu_offset);
 OFFSET(__LC_VDSO_PER_CPU, lowcore, vdso_per_cpu_data);
 OFFSET(__LC_MACHINE_FLAGS, lowcore, machine_flags);
 OFFSET(__LC_PREEMPT_COUNT, lowcore, preempt_count);
 OFFSET(__LC_GMAP, lowcore, gmap);
 OFFSET(__LC_BR_R1, lowcore, br_r1_trampoline);

 OFFSET(__LC_DUMP_REIPL, lowcore, ipib);

 OFFSET(__LC_MCESAD, lowcore, mcesad);
 OFFSET(__LC_EXT_PARAMS2, lowcore, ext_params2);
 OFFSET(__LC_FPREGS_SAVE_AREA, lowcore, floating_pt_save_area);
 OFFSET(__LC_GPREGS_SAVE_AREA, lowcore, gpregs_save_area);
 OFFSET(__LC_PSW_SAVE_AREA, lowcore, psw_save_area);
 OFFSET(__LC_PREFIX_SAVE_AREA, lowcore, prefixreg_save_area);
 OFFSET(__LC_FP_CREG_SAVE_AREA, lowcore, fpt_creg_save_area);
 OFFSET(__LC_TOD_PROGREG_SAVE_AREA, lowcore, tod_progreg_save_area);
 OFFSET(__LC_CPU_TIMER_SAVE_AREA, lowcore, cpu_timer_save_area);
 OFFSET(__LC_CLOCK_COMP_SAVE_AREA, lowcore, clock_comp_save_area);
 OFFSET(__LC_AREGS_SAVE_AREA, lowcore, access_regs_save_area);
 OFFSET(__LC_CREGS_SAVE_AREA, lowcore, cregs_save_area);
 OFFSET(__LC_PGM_TDB, lowcore, pgm_tdb);
 BLANK();

 OFFSET(__MCESA_GS_SAVE_AREA, mcesa, guarded_storage_save_area);
 BLANK();

 OFFSET(__GMAP_ASCE, gmap, asce);
 OFFSET(__SIE_PROG0C, kvm_s390_sie_block, prog0c);
 OFFSET(__SIE_PROG20, kvm_s390_sie_block, prog20);

 OFFSET(__KEXEC_SHA_REGION_START, kexec_sha_region, start);
 OFFSET(__KEXEC_SHA_REGION_LEN, kexec_sha_region, len);
 DEFINE(__KEXEC_SHA_REGION_SIZE, sizeof(struct kexec_sha_region));
 return 0;
}
