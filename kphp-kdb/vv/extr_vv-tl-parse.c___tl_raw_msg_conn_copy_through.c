
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_IN_RAW_MSG ;
 int TL_OUT_CONN ;
 int __m_to_conn ;
 int assert (int) ;
 int rwm_process (int ,int,int ,int ) ;
 int rwm_process_and_advance (int ,int,int ,int ) ;

__attribute__((used)) static inline void __tl_raw_msg_conn_copy_through (int len, int advance) {
  if (advance) {
    assert (rwm_process_and_advance (TL_IN_RAW_MSG, len, __m_to_conn, TL_OUT_CONN) == len);
  } else {
    assert (rwm_process (TL_IN_RAW_MSG, len, __m_to_conn, TL_OUT_CONN) == len);
  }
}
